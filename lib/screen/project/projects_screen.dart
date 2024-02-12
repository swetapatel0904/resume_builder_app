import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  TextEditingController txtTitle = TextEditingController();
  TextEditingController txtRoles = TextEditingController();
  TextEditingController txtTechnology = TextEditingController();
  TextEditingController txtDescription = TextEditingController();
  GlobalKey<FormState>key=GlobalKey<FormState>();
  bool isCprogramming = false;
  bool isC = false;
  bool isFlutter = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Projects"),
          centerTitle: true,
          toolbarHeight: 180,
          backgroundColor: Colors.blue.shade700,
          leading:
              const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text("Project Title",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtTitle,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                    )),
                    hintText: "Resume Builder App"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Technologies",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blue,
                    value: isCprogramming,
                    onChanged: (value) {
                      setState(() {
                        isCprogramming = value!;
                      });
                    },
                  ),
                  const Text("C programming", style: TextStyle(fontSize: 18)),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blue,
                    value: isC,
                    onChanged: (value) {
                      setState(() {
                        isC = value!;
                      });
                    },
                  ),
                  const Text("C", style: TextStyle(fontSize: 18)),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blue,
                    value: isFlutter,
                    onChanged: (value) {
                      setState(() {
                        isFlutter = value!;
                      });
                    },
                  ),
                  const Text("Flutter", style: TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Roles",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtRoles,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                    )),
                    hintText: "Organize Team Members, Code analysis"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Technologies",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtTechnology,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                    )),
                    hintText: "5 - Programmers"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Project Description",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtDescription,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                    )),
                    hintText: "Enter your project description"),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if(key.currentState!.validate())
                        {
                          String title = txtTitle.text;
                          String roles = txtRoles.text;
                          String technology = txtTechnology.text;
                          String description = txtDescription.text;
                          String? tech1="", tech2="", tech3="";
                          if (isCprogramming) {
                            tech1 = "C programming";
                          }
                          if (isC) {
                            tech2 = "C";
                          }
                          if (isFlutter) {
                            tech3 = "Flutter";
                          }
                          dataList[5]['title']=title;
                          dataList[5]['technologies']=[tech1,tech2,tech3];
                          dataList[5]['roles']=roles;
                          dataList[5]['technology']=technology;
                          dataList[5]['description']=description;

                        }


                        ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                            content: Text("Data added successfully")));
                        txtTitle.clear();
                        txtRoles.clear();
                        txtTechnology.clear();
                        txtDescription.clear();



                      },
                      child: const Text("SAVE")))
            ]),
          ),
        ),
      ),
    );
  }
}
