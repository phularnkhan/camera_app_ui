import 'package:camera_app_ui/screen_4.dart'; // Import the screen_4 package
import 'package:flutter/material.dart'; // Import the Flutter Material package

class Screen3 extends StatelessWidget {
  // Define a stateless widget named Screen3
  const Screen3({super.key}); // Constructor for the widget

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Return a Scaffold widget
      body: Column( // Use a Column widget to arrange children vertically
        children: [
          SafeArea( // SafeArea to avoid overlap with system UI
              child: Center(
            child: Text(
              'Wired Streaming',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, height: 3), // Display the title text with custom style
            ),
          )),
          SizedBox(
            height: 200, // Spacer of 200 pixels
          ),
          Row(children: [
            SizedBox(
              width: 50, // Spacer of 50 pixels
            ),
            Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange), // Create a container with decorations
              child: Icon(
                Icons.video_camera_front,
                color: Colors.white, // Display a video camera icon
              ),
            ),
            SizedBox(
              width: 20, // Spacer of 20 pixels
            ),
            Column(
              children: [
                SizedBox(
                  height: 20, // Spacer of 20 pixels
                ),
                Text(
                  'pulseaim Camera',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500), // Display camera name with custom style
                ),
                Text(
                  'Vendor ID:21325\n Product ID:8457',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400), // Display vendor and product IDs with custom style
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 20, // Spacer of 20 pixels
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen4())); // Navigate to Screen4 when tapped
              },
              child: Container(
                width: 280, // Set container width
                height: 40, // Set container height
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange), // Create a container with decorations
                child: Center(
                  child: Text(
                    'Start Streaming',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600), // Display button text with custom style
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
