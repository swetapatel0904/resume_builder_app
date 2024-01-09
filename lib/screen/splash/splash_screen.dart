import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds:3),()=>Navigator.pushReplacementNamed(context, 'home'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo/logo1.png",height: 100,width: 100),
            SizedBox(height: 10,),
            Text("Resume Maker",
              style: TextStyle(
                  fontSize: 18,color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        )
    );
  }
}
