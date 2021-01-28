import 'package:flutter/material.dart';

//The main function is the starting point for all Flutter apps.
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Icon(Icons.menu,size: 40,),
                   Icon(Icons.supervised_user_circle,size: 40,)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(5,0,0,0),
                     child: Text('January',style: TextStyle(fontSize: 30),),
                   ),
                   Row(
                     children: [
                       Icon(Icons.graphic_eq,size: 40,),
                       Icon(Icons.refresh,size: 40,)
                     ],
                   )
                 ],
               ),

             ],
           ),
        )
      ),
    ),
  );
}
