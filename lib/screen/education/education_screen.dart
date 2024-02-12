import 'package:flutter/material.dart';

import '../../utils/global.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController txtCourse = TextEditingController();
  TextEditingController txtInstitute = TextEditingController();
  TextEditingController txtGrade = TextEditingController();
  TextEditingController txtYear = TextEditingController();
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
            padding: const EdgeInsets.all(30),
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
                    controller: txtCourse,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },

                   
                    decoration: const InputDecoration(
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
                    controller: txtInstitute,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },


                    decoration: const InputDecoration(
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
                    controller: txtGrade,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
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
                    controller: txtYear,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "required";
                      }
                      return null;
                    },

                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                        hintText: "2019"
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: ElevatedButton(onPressed: (){
                      if(key.currentState!.validate())
                      {
                        String course = txtCourse.text;
                        String institute = txtInstitute.text;
                        String grade = txtGrade.text;
                        String year = txtYear.text;

                        dataList[3]['course']=course;
                        dataList[3]['institute']=institute;
                        dataList[3]['grade']=grade;
                        dataList[3]['year']=year;


                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data is saved")));

                      }
                      txtCourse.clear();
                      txtInstitute.clear();
                      txtGrade.clear();
                      txtYear.clear();
                    }, child: Text("Save")),
                  )
                ]
          ),
      ),
        )

      ),
    );
  }
}
