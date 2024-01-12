import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_maker_app/utils/global.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 250,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: FileImage(File("${dataList[0]['image']}")),
                  radius: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name:${dataList[0]['name']}",style: const TextStyle(fontSize: 18),),
                    const SizedBox(height: 10,),
                    Text("mobile:${dataList[0]['mobile']}",style: const TextStyle(fontSize: 18),),
                    const SizedBox(height: 10,),
                    Text("email:${dataList[0]['email']}",style: const TextStyle(fontSize: 18),),
              ]
          )
              ]
          ),
    ),

          Container(
            padding: const EdgeInsets.all(10),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Carrier Objective",style: TextStyle(fontSize: 18),),
                const Divider(color: Colors.black, thickness: 2,),
                Text("Carrier Objective:${dataList[1]['carrier']}",style: const TextStyle(fontSize: 15),),
                Text("Current Designation:${dataList[1]['designation']}",style: const TextStyle(fontSize: 15),),
                const SizedBox(height: 20,),
                const Text("Personal Details",style: TextStyle(fontSize: 18),),
                const Divider(color: Colors.black, thickness: 2,),
                Text("DOB:${dataList[2]['dob']}",style: const TextStyle(fontSize: 15),),
                Text("Marital Status:${dataList[2]['marital']}",style: const TextStyle(fontSize: 15),),
                Text("Language Known:${dataList[2]['language']}",style: TextStyle(fontSize: 15),),
                Text("Nationality:${dataList[2]['nationality']}",style: const TextStyle(fontSize: 15),),
                const SizedBox(height: 20,),
                const Text("Education",style: TextStyle(fontSize: 18),),
                const Divider(color: Colors.black, thickness: 2,),
                const Text("Course/Degree:",style: TextStyle(fontSize: 15),),
                const Text("School/College/Institute:",style: TextStyle(fontSize: 15),),
                const Text("School/College/Institute's Grade:",style: TextStyle(fontSize: 15),),
                const Text("Year of Pass:",style: TextStyle(fontSize: 15),),
                const SizedBox(height: 20,),
                const Text("Technical skills",style: TextStyle(fontSize: 18),),
                const Divider(color: Colors.black, thickness: 2,),

              ],
            ),
          ),

        ],
      ),


    );
  }
}
