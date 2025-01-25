 
import 'package:flutter/material.dart'; // Import the Flutter Material package

class Screen4 extends StatefulWidget {
  // Define a stateful widget named Screen4
  const Screen4({super.key}); // Constructor for the widget

  @override
  State<Screen4> createState() => _Screen4State(); // Create the state for the widget
}

class _Screen4State extends State<Screen4> {
  String _imagePath = 'assets/frame.png'; // Default image path
  bool isCamera = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Return a Scaffold widget
      body: Column( // Use a Column widget to arrange children vertically
        children: [
          SafeArea(child: Image.asset(_imagePath)), // Display the selected image from assets
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
                          shape: BoxShape.circle, color: isCamera?Color(0xffF68B1F):Colors.white), // Create a circle-shaped container
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isCamera=true;
                              _imagePath = 'assets/frame9.png'; // Set to the first image
                            });
                          },
                          child: Image.asset(
                            'assets/vector.png', // Display an icon from assets
                            width: 24,
                            height: 21,
                             color: isCamera?Colors.white:Colors.black
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Capture', style: TextStyle(
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
                          shape: BoxShape.circle, color:isCamera? Colors.white:Color(0xffF68B1F)), // Create a circle-shaped container
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isCamera=false;
                              _imagePath = 'assets/image.png'; // Set to the second image
                            });
                          },
                          child: Image.asset(
                            'assets/vedio.png', // Display an icon from assets
                            width: 24,
                            height: 21,
                            color: isCamera?Colors.black:Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Capture', style: TextStyle(
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
                           color: isCamera?Color(0xffF68b1f):Colors.white , // Custom background color
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){
setState(() {
  isCamera = false;
  _imagePath = 'assets/full.png';
});




                          },
                          child: Image.asset(
                            'assets/screen.png', // Display an icon from assets
                            width: 24,
                            height: 21,
                            color: isCamera?Colors.white:Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,), // Spacer of 8 pixels
                    Text('Full', style: TextStyle(
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
