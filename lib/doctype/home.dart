import 'package:flutter/material.dart';

import 'exist.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[30],
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add,),onPressed: (){},),
      appBar: AppBar(
        leading: Icon(Icons.menu,size:30),
        title: Text('Doctype'),
        actions: [Padding(
        padding: const EdgeInsets.fromLTRB(0,0,10,0),
        child: Icon(Icons.supervised_user_circle,size: 35,),
      )],),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: new BoxDecoration(
                  color:Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(30))
                  
                ), child: Text('New Patient',style: TextStyle(color:Colors.white),)),

                SizedBox(width:8),

                 GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(new MaterialPageRoute(builder:  (BuildContext context)=>PatientList()));
                   },
                                    child: Container(
              padding: EdgeInsets.all(10),
              decoration: new BoxDecoration(
              color:Colors.deepPurple,
              borderRadius: BorderRadius.all(Radius.circular(30))
              
            ), child: Text('Exsisting Patient',style: TextStyle(color:Colors.white),)),
                 ),
              ],
            ),


           

            SizedBox(height:30),
            DoctorCard(context),
            
            
          ]
        ),
      ),
    );
  }
}

Widget DoctorCard(BuildContext context){
  return Container(height:250,
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color:Colors.deepPurple[300]
            ),
            child: Center(child: Text('Dr. Rajgopal',style:TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w300))),
            
            );
}


