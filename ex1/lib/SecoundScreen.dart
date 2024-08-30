import 'package:flutter/material.dart';
import 'dart:math';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Color backgroundColor = Colors.white;

  void changeColor() {
    setState(() {
      // ランダムに色を変更
      backgroundColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/karby.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: changeColor,
                child: Text(
                  'Change Background Color',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
