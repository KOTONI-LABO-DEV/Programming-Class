import 'package:flutter/material.dart';
import 'package:flutter_basic1/SecoundScreen.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
        ImageSlideshow(

        /// Width of the [ImageSlideshow].
        width: double.infinity,

        /// Height of the [ImageSlideshow].
        height: 500,

        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,

        /// The color to paint the indicator.
        indicatorColor: Colors.blue,

        /// The color to paint behind th indicator.
        indicatorBackgroundColor: Colors.grey,

        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        children: [
          Image.asset(
            'assets/karby.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/karby2.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/karby3.png',
            fit: BoxFit.cover,
          ),
        ],

        /// Called whenever the page in the center of the viewport changes.
        onPageChanged: (value) {
          print('Page changed: $value');
        },

        /// Auto scroll interval.
        /// Do not auto scroll with null or 0.
        autoPlayInterval: 3000,

        /// Loops back to first slide.
        isLoop: true,
      ),
          SizedBox(height: 70),
          Row(
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
        ],
      ),
    );
  }
}
