import 'package:flutter/material.dart';

import '../../utils/global.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Scaffold(appBar: AppBar(
      title: const Text("Education"),
      centerTitle: true,
      toolbarHeight: 180,
      backgroundColor: Colors.blue.shade700,
      leading:  const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white
      ),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text("Course/Degree",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
            ),
              const SizedBox(
                height: 10,
              ),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },

                   
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                       hintText: "B. Tech Information Technology"
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("School/College/Institute",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },


                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                        hintText: "Bhagwan Mahavir University"
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("School/College/Institute's Grade",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },


                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                        hintText: "70% (or) 7.0 CGPA"
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("Year of Pass",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },

                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                        hintText: "2019"
                    ),
                  ),
                ]
          ),
      ),
        )

      ),
    );
  }
}
