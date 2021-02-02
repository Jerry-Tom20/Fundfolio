import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PatientList extends StatefulWidget {
  PatientList({Key key}) : super(key: key);

  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  final firestoreInstance = FirebaseFirestore.instance;
  QuerySnapshot data;
  bool isLoading = true;
  @override
  void initState() {
    print('Hello');
    
    firestoreInstance.collection('patient').get().then((querysnapshot) {
      print(querysnapshot.docs.length);
     setState(() {
       isLoading = !isLoading;
       data=querysnapshot;
     });
    });
     
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    if(isLoading){
      return Scaffold(body:Center(child: Text('Loading'),));
    }

    else{
      int len = data.docs.length;
      return Scaffold(
      appBar: AppBar(title: Text('Existing Patient'),
      
      ),

      body: new ListView.builder
  (
    itemCount:len,
    itemBuilder: (BuildContext ctxt, int index) {
     return Padding(
       padding: const EdgeInsets.fromLTRB(0,10,0,0),
       child: Container(height: 200, 
       width: MediaQuery.of(context).size.width, 
       decoration: new BoxDecoration(
         color:Colors.deepPurple[300]
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             new Text(data.docs.toList()[index].data()['name'],style: TextStyle(fontSize:20,color: Colors.white),),
             new Text('Medical History '+data.docs.toList()[index].data()['Medical History'],style: TextStyle(fontSize:20,color: Colors.white),),
             new Text('Age '+data.docs.toList()[index].data()['age'].toString(),style: TextStyle(fontSize:20,color: Colors.white),),
             new Text('Date '+data.docs.toList()[index].data()['date'],style: TextStyle(fontSize:20,color: Colors.white),),
             new Text('Disease '+data.docs.toList()[index].data()['disease']['name'],style: TextStyle(fontSize:20,color: Colors.white),),
             new Text('Status '+data.docs.toList()[index].data()['disease']['status'],style: TextStyle(fontSize:20,color: Colors.white),),
             new Text('Op Number '+data.docs.toList()[index].data()['opnumber'],style: TextStyle(fontSize:20,color: Colors.white),),
             new Text('Phone '+data.docs.toList()[index].data()['phone'].toString(),style: TextStyle(fontSize:20,color: Colors.white),),
           ],
         ),
       )),
     );
    }
  )
    );
    }
    
  }
}