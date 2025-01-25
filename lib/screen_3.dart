import 'package:camera_app_ui/screen_4.dart'; // Import the screen_4 package
import 'package:flutter/material.dart'; // Import the Flutter Material package

class Screen3 extends StatelessWidget {
  // Define a stateless widget named Screen3
  const Screen3({super.key}); // Constructor for the widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Return a Scaffold widget
        body: Column(// Use a Column widget to arrange children vertically
            children: [
      SafeArea(
          // SafeArea to avoid overlap with system UI
          child: Center(
        child: Text(
          'Wired Streaming',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 3), // Display the title text with custom style
        ),
      )),
      SizedBox(
        height: 200, // Spacer of 200 pixels
      ),
      Container(
        color: Color(0xFFFFFFFF),
        height: 158,
        width: 312,
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    color: Color(0xffF68B1F),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  // padding: EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.videocam,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 13),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Pulseaim Camera',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        height: 1.2
                      ),
                    ),
                    Text(
                      'Vendor ID: 21325',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Product ID: 8457',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen4()));
              },
              child: Container(
                width: double.infinity,
                height: 40,
                
                decoration: BoxDecoration(
                    color: Color(0xffF68B1F),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Start Streaming',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ]));
  }
}
