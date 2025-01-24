import 'package:flutter/material.dart'; // Import the Flutter Material package

class Screen6 extends StatefulWidget {
  // Define a stateful widget named Screen6
  const Screen6({super.key}); // Constructor for the widget

  @override
  State<Screen6> createState() => _Screen6State(); // Create the state for the widget
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Return a Scaffold widget
      body: Column( // Use a Column widget to arrange children vertically
        children: [
          SafeArea(child: Image(image: AssetImage('assets/image.png'))), // Display an image from assets
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
                        shape: BoxShape.circle, // Create a circle-shaped container
                        color: Colors.white // Set container background color
                      ),
                      child: Center(
                        child: Image(image: AssetImage('assets/vector.png'),width: 24,height: 21), // Display an image from assets
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Camera',style: TextStyle(
                      color: Colors.white, // Custom text style for "Camera" label
                      fontSize: 13,
                      fontWeight: FontWeight.w400
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
                        shape: BoxShape.circle, // Create a circle-shaped container
                        color: Colors.orangeAccent // Set container background color
                      ),
                      child: Center(
                        child: Image(image: AssetImage('assets/vedio.png'),width: 24,height: 21), // Display an image from assets
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Record',style: TextStyle(
                      color: Colors.white, // Custom text style for "Record" label
                      fontSize: 13,
                      fontWeight: FontWeight.w400
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
                        shape: BoxShape.circle, // Create a circle-shaped container
                        color: Color(0xff4b4b4b), // Custom background color
                      ),
                      child: Center(
                        child: Image(image: AssetImage('assets/screen.png'),width: 24,height: 21), // Display an image from assets
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Camera',style: TextStyle(
                      color: Colors.white, // Custom text style for "Camera" label
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
