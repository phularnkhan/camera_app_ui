import 'package:camera_app_ui/screen_5.dart'; // Import the screen_5 package
import 'package:camera_app_ui/screen_6.dart'; // Import the screen_6 package
import 'package:flutter/material.dart'; // Import the Flutter Material package

class Screen4 extends StatefulWidget {
  // Define a stateful widget named Screen4
  const Screen4({super.key}); // Constructor for the widget

  @override
  State<Screen4> createState() => _Screen4State(); // Create the state for the widget
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Return a Scaffold widget
      body: Column( // Use a Column widget to arrange children vertically
        children: [
          SafeArea(child: Image(image: AssetImage('assets/frame.png'))), // Display an image from assets
          Container(
            height: 130, // Set container height
            color: Colors.black, // Set container background color
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute the items evenly
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min, // Take the minimum necessary space
                  children: [
                    Container(
                      width: 60, // Set container width
                      height: 60, // Set container height
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white), // Create a circle-shaped container
                      child: Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen5())); // Navigate to Screen5 when tapped
                            },
                            child: Image(
                                image: AssetImage('assets/vector.png'), // Display an image from assets
                                width: 24,
                                height: 21)),
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Capture',style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400 // Custom text style for "Capture" label
                    ),)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min, // Take the minimum necessary space
                  children: [
                    Container(
                      width: 60, // Set container width
                      height: 60, // Set container height
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white), // Create a circle-shaped container
                      child: Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen6())); // Navigate to Screen6 when tapped
                            },
                            child: Image(
                                image: AssetImage('assets/vedio.png'), // Display an image from assets
                                width: 24,
                                height: 21)),
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Capture',style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400 // Custom text style for "Capture" label
                    ),)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min, // Take the minimum necessary space
                  children: [
                    Container(
                      width: 60, // Set container width
                      height: 60, // Set container height
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff4b4b4b), // Custom background color
                      ),
                      child: Center(
                        child: Image(
                            image: AssetImage('assets/screen.png'), // Display an image from assets
                            width: 24,
                            height: 21),
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Full',style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400 // Custom text style for "Full" label
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
