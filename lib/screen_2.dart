import 'package:camera_app_ui/screen_3.dart'; // Import the screen_3 package
import 'package:flutter/material.dart'; // Import the Flutter Material package

class Screen2 extends StatelessWidget {
  // Define a stateless widget named Screen2
  const Screen2({super.key}); // Constructor for the widget

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Return a Scaffold widget
      body: Column( // Use a Column widget to arrange children vertically
        children: [
          SafeArea( // SafeArea to avoid overlap with system UI
            child: Center(
              child: Text('Wired Streaming',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)), // Display the title text with custom style
            ),
          ),
          SizedBox(
            height: 200, // Spacer of 200 pixels
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Screen3())); // Navigate to Screen3 when tapped
            },
            child: Image(
              image: AssetImage('assets/error.png'), // Display an image from assets
              width: 32,
              height: 33,
            ),
          ),
          SizedBox(
            height: 10, // Spacer of 10 pixels
          ),
          Text(
            'NO UVC Device Connected',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), // Display a message with custom style
          ),
          SizedBox(
            height: 10, // Spacer of 10 pixels
          ),
          Text(
            'Enable OTG connection from settings, if',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400), // Additional instructional text
          ),
          SizedBox(
            height: 5, // Spacer of 5 pixels
          ),
          Text(
            'not enabled',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400), // Additional instructional text
          )
        ],
      ),
    );
  }
}
