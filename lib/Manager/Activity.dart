import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Manager_Header.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';
import 'package:try_app/Student/Chat_Student.dart';
import 'ShowPostData.dart';



// ignore: camel_case_types
class Post_activity extends StatefulWidget {

  const Post_activity({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Post_activityState();
}

// ignore: camel_case_types
class _Post_activityState extends State<Post_activity>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  File avatarImageFile;
  bool showFab = true;
  TabController _tabController;
  static const _kTabs = <Tab>[

    Tab(icon: Icon(Icons.announcement), text: 'ANNOUNCEMENTS', ),
    Tab(icon: Icon(Icons.post_add), text: 'POST'),
    Tab(icon: Icon(Icons.chat), text: 'CHAT'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
    _tabController.addListener(() {
      if (_tabController.index == 0) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Repeat_Background_image(),
          bg_shade_repeat(),
          Head_Repeat(),
          Manager_Text(), //Manager Text
          Manager_pic(),
          TabBarView(
          controller: _tabController,
          children: [
            ShowAnnouncementData(),
            ShowPostData(),
            Chat(),
          ],
        ),
  ]
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
        onPressed: getImage,
        child: Icon(Icons.add_a_photo),
      )
          : null,
      bottomNavigationBar: Material(
        color: const Color(0x99211f1f),
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }

  Future getImage() async {
    // Get image from gallery.
    // var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    ImagePicker imagePicker = ImagePicker();
    PickedFile pickedFile;

    pickedFile = await imagePicker.getImage(source: ImageSource.gallery);

    File image = File(pickedFile.path);

    if (image != null) {
      setState(() {
        avatarImageFile = image;
        isLoading = true;
      });
    }
    _uploadImageToFirebase(image);
  }

  Future<void> _uploadImageToFirebase(File image) async {
    try {
      // Make random image name.
      int randomNumber = Random().nextInt(100000);
      String imageLocation = 'Announcements/image$randomNumber.jpg';

      // Upload image to firebase.
      final StorageReference storageReference = FirebaseStorage().ref().child(imageLocation);
      final StorageUploadTask uploadTask = storageReference.putFile(image);
      await uploadTask.onComplete;
      _addPathToDatabase(imageLocation);
    }catch(e){
      print(e.message);
    }
  }

  Future<void> _addPathToDatabase(String text) async {
    try {
      // Get image URL from firebase
      final ref = FirebaseStorage().ref().child(text);
      var imageString = await ref.getDownloadURL();

      // Add location and url to database
      await FirebaseFirestore.instance.collection('Announcements').doc().set({'url':imageString , 'location':text});
    }catch(e){
      print(e.message);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message),
            );
          }
      );
    }
  }

}

class Record {
  final String location;
  final String url;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['location'] != null),
        assert(map['url'] != null),
        location = map['location'],
        url = map['url'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);

  @override
  String toString() => "Record<$location:$url>";
}

class ShowAnnouncementData extends StatefulWidget {
  @override
  _ShowAnnouncementDataState createState() => _ShowAnnouncementDataState();
}

class _ShowAnnouncementDataState extends State<ShowAnnouncementData> {
  bool isLoading = false;
  File avatarImageFile;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, 150.0),
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Flexible(
                  child: _buildBody(context),
                ),
              ],
            ),
          ),


          width: 3700.0,
          height: 580.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: const Color(0x99211f1f),
            border: Border.all(width: 1.0, color: const Color(0x99707070)),
          ),

        ),

      ),

    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Announcements').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.docs);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
        padding: const EdgeInsets.only(top: 20.0),
        children: snapshot.map((data) => _buildListItem(context, data)).toList()
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.location),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  record.location,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Image.network(record.url),
            ],
          ),
        ),
      ),
    );
  }

  Future getImage() async {
    // Get image from gallery.
    // var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    ImagePicker imagePicker = ImagePicker();
    PickedFile pickedFile;

    pickedFile = await imagePicker.getImage(source: ImageSource.gallery);

    File image = File(pickedFile.path);

    if (image != null) {
      setState(() {
        avatarImageFile = image;
        isLoading = true;
      });
    }
    _uploadImageToFirebase(image);
  }

  Future<void> _uploadImageToFirebase(File image) async {
    try {
      // Make random image name.
      int randomNumber = Random().nextInt(100000);
      String imageLocation = 'Announcements/image$randomNumber.jpg';

      // Upload image to firebase.
      final StorageReference storageReference = FirebaseStorage().ref().child(imageLocation);
      final StorageUploadTask uploadTask = storageReference.putFile(image);
      await uploadTask.onComplete;
      _addPathToDatabase(imageLocation);
    }catch(e){
      print(e.message);
    }
  }
  Future<void> _addPathToDatabase(String text) async {
    try {
      // Get image URL from firebase
      final ref = FirebaseStorage().ref().child(text);
      var imageString = await ref.getDownloadURL();

      // Add location and url to database
      await FirebaseFirestore.instance.collection('Posts').doc().set({'url':imageString , 'location':text});
    }catch(e){
      print(e.message);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message),
            );
          }
      );
    }
  }

}




