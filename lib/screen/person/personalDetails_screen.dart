import 'package:flutter/material.dart';

import '../../utils/global.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  TextEditingController txtDob = TextEditingController();
  TextEditingController txtNationality = TextEditingController();
  String selectedGroupValue = "Married";
  bool isEnglish=false;
  bool isHindi = false;
  bool isGujarati = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: const Text("Personal Details"),
              centerTitle: true,
              toolbarHeight: 180,
              backgroundColor: Colors.blue.shade700,
              leading:  const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white
              ),
              ),
              body: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.sizeOf(context).height*0.70,
                  width: MediaQuery.sizeOf(context).width*0.80,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black12,blurRadius: 5,spreadRadius: 2),
                    ]
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("DOB",
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

                          controller: txtDob,
                          decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                              hintText: "DD/MM/YY"
                          )
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Marital Status",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Radio(value: "Single", groupValue: selectedGroupValue, onChanged: (value) {
                              setState(() {
                                selectedGroupValue=value!;
                              });
                            },
                            ),
                            const Text("Single",style: TextStyle(fontSize: 18))
                          ],
                        ),
                        Row(
                          children: [
                            Radio(value: "Married", groupValue: selectedGroupValue, onChanged: (value) {
                              setState(() {
                                selectedGroupValue=value!;
                              });
                            },
                            ),
                            const Text("Married",style: TextStyle(fontSize: 18))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Language Known",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.blue,
                                value: isEnglish,
                                onChanged: (value) {
                                setState(() {
                                  isEnglish=value!;
                                });
                              },
                              ),
                              const Text("English",style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.blue,
                              value: isHindi,
                              onChanged: (value) {
                                setState(() {
                                  isHindi=value!;
                                });
                              },
                            ),
                            const Text("Hindi",style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.blue,
                              value: isGujarati,
                              onChanged: (value) {
                                setState(() {
                                  isGujarati=value!;
                                });
                              },
                            ),
                            const Text("Gujarati",style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Nationality",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),
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

                          controller: txtNationality,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Indian"
                            )
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  String dob = txtDob.text;
                                  String nationality = txtNationality.text;
                                  String? lan1="",lan2="",lan3="";
                                  if(isEnglish)
                                    {
                                      lan1 = "English";
                                    }
                                   if(isHindi)
                                    {
                                      lan2 = "Hindi";
                                    }
                                  if(isGujarati)
                                    {
                                      lan3 = "Gujarati";
                                    }

                                  dataList[2]['dob']=dob;
                                  dataList[2]['marital']=selectedGroupValue;
                                  dataList[2]['language']=[lan1,lan2,lan3];
                                  dataList[2]['nationality']=nationality;



                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Data added successfully")));
                                    txtDob.clear();
                                    txtNationality.clear();

                                },
                                child: const Text(
                                    "Save"
                                )
                            )
                        )
                      ],
                    ),
                  ),


                ),

              )
    ),
    );
  }
}
