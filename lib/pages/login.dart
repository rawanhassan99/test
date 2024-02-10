import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
         body: Container(
         
          width: double.infinity,
          height: double.infinity,
           child: Stack(
            children: [
             
               Positioned(
                top: 0,
                right: 0,
                left: 0,
                
                child: 
                Image.asset(
                  "assets/images/menu&profile&rec.png",fit: BoxFit.cover)
                  ),
               Positioned(
                top: 15,
                right: 15,
                child: Image.asset("assets/images/Fix-It Corbit-fotor-2 1.png")),
               Center(
  child: Stack(
    children: [
      Image.asset(
        "assets/images/Rec that Contain Categories.png",
        fit: BoxFit.cover,
      ),
      Positioned.fill(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Widget 1'),
            Text('Widget 2'),
           
          ],
        ),
      ),
    ],
  ),
)

         
            ],
         
         
               ),
         ),
    
    
    
      ),
    );
  }
}