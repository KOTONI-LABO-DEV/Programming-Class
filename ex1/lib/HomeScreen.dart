import 'package:flutter/material.dart';
import 'package:flutter_basic1/SecoundScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // ボタン1のアクション
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Button Pressed"),
                      content: Text("Botton 1 Pressed!!!"),
                      actions: <Widget>[
                        TextButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Button 1', style: Theme.of(context).textTheme.bodyLarge,),
            ),
            SizedBox(height: 20), // ボタン間のスペース
            ElevatedButton(
              onPressed: () {
                // ボタン2のアクション
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Button 2',style: Theme.of(context).textTheme.bodyLarge),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Button 3', style: Theme.of(context).textTheme.bodyLarge),
            ),
          ],
        ),
      ),
    );
  }
}
