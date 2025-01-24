import 'package:camera_app_ui/screen_2.dart';
import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Image(image: AssetImage('assets/camera.png'),width: 156,height: 123,)),
            SizedBox(height: 10),
            Text('USB Camera',style: 
             TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
             )
            ),
          ],
        ),
      ),
    );
  }
}