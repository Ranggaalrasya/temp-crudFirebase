import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_test/AddImage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:crud_test/DisplayDataScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase CRUD App',
      home: DisplayDataScreen(),
    );
  }
}

// creating UI that will gather data and send it to firestore with means performing Flutter Firebase CRUD operations
