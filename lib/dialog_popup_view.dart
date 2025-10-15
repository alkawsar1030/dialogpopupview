

import 'package:flutter/material.dart';

class DialogPopupView extends StatelessWidget {
  const DialogPopupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DialogWorkShop')),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context)=> AlertDialog(
               title: Text('Alert again'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Cancel'))
                ],
              ));
            }, child: Text('clickME'),
            ),
            ElevatedButton(onPressed: (){
             showDialog(context: context, builder: (context)=>SimpleDialog(
               title: Text('selec Item'),
               children: [

               SimpleDialogOption(
                child: Text('dhaka'),
                 onPressed: (){
                  print("You Have Choosen Dhaka");
                 },
               ),SimpleDialogOption(
                child: Text('khulna'),
                 onPressed: (){
                  print("You Have Choosen Khulna");
                 },
               ),SimpleDialogOption(
                child: Text('bhola'),
                 onPressed: (){
                  print("You Have Choosen BHola");
                 },
               ),SimpleDialogOption(
                child: Text('bangladesh'),
                 onPressed: (){
                  print("You Have Choosen Bangladesh");
                 },
               ),
               ],

               backgroundColor: Colors.lightGreen,
             ),
              );
            }, child: Text('Click on Simple Dialog'),
            ),
          ],
        ),
      )
    );
  }
}
