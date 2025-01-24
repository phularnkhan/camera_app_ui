  import 'package:camera_app_ui/screen_6.dart'; // Import the screen_6 package
import 'package:flutter/material.dart'; // Import the Flutter Material package

class Screen5 extends StatefulWidget {
  // Define a stateful widget named Screen5
  const Screen5({super.key}); // Constructor for the widget

  @override
  State<Screen5> createState() => _Screen5State(); // Create the state for the widget
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Return a Scaffold widget
      body: Column( // Use a Column widget to arrange children vertically
        children: [
          SafeArea(child: Image(image: AssetImage('assets/frame9.png'))), // Display an image from assets
          Column(
            mainAxisSize: MainAxisSize.min, // Take the minimum necessary space
            children: [
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
                            color: Colors.orangeAccent // Set container background color
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
                            color: Colors.white // Set container background color
                          ),
                          child: Center(
                            child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Screen6())); // Navigate to Screen6 when tapped
                            },
                            child: Image(image: AssetImage('assets/vedio.png'),width: 24,height: 21)), // Display an image from assets
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
                        Text('Full',style: TextStyle(
                          color: Colors.white, // Custom text style for "Full" label
                          fontSize: 13,
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
