import 'package:flutter/material.dart';

class home extends StatefulWidget {
  
  home({Key key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
 String month;
 @override
  void initState() {
      month="Month";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                     padding: const EdgeInsets.fromLTRB(10,0,0,0),
                     child: new DropdownButton<String>(
                       icon: Icon(Icons.calendar_today),
                      hint: Text(month.toString()),
  items: <String>['January', 'February', 'March', 'April'].map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value,),
    );
  }).toList(),
  onChanged: (String selectedmonth) {

   
   setState(() {
     month = selectedmonth.toString();
     print(month);
      print('HELLO'+selectedmonth);
   });
  },
)
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
      );
  }
}