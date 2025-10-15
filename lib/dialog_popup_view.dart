import 'package:flutter/material.dart';

class DialogPopupView extends StatelessWidget {
  const DialogPopupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DialogWorkShop'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
              showDialog(
                  context: context,
                  builder: (context)=>
                      AlertDialog(
                        title: Text('alret'),
                        content: Text('this is the content part'),
                        actions: [
                          TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel'))
                         
                        ],
                      ),
              );
              },
              child: Text('click me'),
            ),
          ],
        ),
      ),
    );
  }
}
