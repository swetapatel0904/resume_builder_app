import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  String selectedGroupValue = "previously";
  bool isDateJoined = true;
  bool isDateExit = true;
  TextEditingController txtCompany = TextEditingController();
  TextEditingController txtInstitute = TextEditingController();
  TextEditingController txtRoles = TextEditingController();
  GlobalKey<FormState>key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Scaffold(
        appBar: AppBar(
        title: const Text("Experiences"),
        centerTitle: true,
        toolbarHeight: 180,
        backgroundColor: Colors.blue.shade700,
        leading:  const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white
        ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Company Name",
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
                      controller: txtCompany,
                    validator: (value){
                    if(value!.isEmpty)
                    {
                    return "required";
                    }
                    return null;
                    },


                    decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                    hintText: "New Enterprise, San Francisco"
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
                    hintText: "Quality Test Designer"
                    ),
                    ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("Roles (Optional",
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
              controller: txtRoles,
              maxLines: 2,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                  hintText: "Working with team members to come up with new concepts and product analysis..."
              ),
            ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("Employed Status",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: Colors.blue,
                        value: "previously",
                        groupValue: selectedGroupValue,
                        onChanged: (value) {
                        setState(() {
                          selectedGroupValue=value!;
                          if(value=="previously")
                            {
                              isDateJoined=true;
                              isDateExit=true;
                            }
                        });
                      },
                      ),
                      const Text("Previously Employed",style: TextStyle(fontSize: 12,color: Colors.blue)),
                      const SizedBox(
                        width: 5,
                      ),
                      Radio(
                        activeColor: Colors.blue,
                        value: "currently",
                        groupValue: selectedGroupValue,
                        onChanged: (value) {
                        setState(() {
                          selectedGroupValue=value!;
                          if(value=="currently")
                          {
                            isDateJoined=true;
                            isDateExit=false;
                          }
                        });
                      },
                      ),
                      const Text("Currently Employed",style: TextStyle(fontSize: 12,color: Colors.blue)),
                    ],

                  ),
                  const SizedBox(height: 20),
                  const Divider(indent: 3,endIndent: 3,thickness: 2),
            const SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible:isDateJoined,
                  child: Column(
                    children: [
                      const Text("Date Joined",style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey
            )
            ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        height: 40,
                        width: 140,
                        child: TextFormField(
                            validator: (value){
                              if(value!.isEmpty)
                              {
                                return "required";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY"
                            )
                        ),
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible:isDateExit,
                  child: Column(
                    children: [
                      const Text("Date Exit",style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                      )
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        height: 40,
                        width: 140,
                        child: TextFormField(
                            validator: (value){
                              if(value!.isEmpty)
                              {
                                return "required";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY"
                            )
                        ),
                      ),

                    ],
                  ),
                ),
                  ]
                ),
                  const SizedBox(height: 20,),
                  Center(
                    child: ElevatedButton(onPressed: (){
                      if(key.currentState!.validate())
                      {
                        String company = txtCompany.text;
                        String institute = txtInstitute.text;
                        String roles = txtRoles.text;


                        dataList[4]['company']=company;
                        dataList[4]['institute']=institute;
                        dataList[4]['roles']=roles;
                        dataList[4]['status']=selectedGroupValue;

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Data is saved")));
                        txtCompany.clear();
                        txtInstitute.clear();
                        txtRoles.clear();
                      }

                    },
                        child: const Text("SAVE")),
                  )

      ]
      ),
      ),
      ),
    )
    );

  }
}
