import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PatientList extends StatefulWidget {
  PatientList({Key key}) : super(key: key);

  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  void initState() {
    // TODO: implement initState
    firestoreInstance.collection("patient").get().then((querySnapshot) {
    querySnapshot.docs.forEach((result) {
      print(result.data());
    });
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Existing Patient'),
      
      ),

      body: Container(
        child:Center(child: Text('Hello'))
      ),
    );
  }
}