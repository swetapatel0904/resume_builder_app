import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  String selectedGroupValue = "previously";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Education"),
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
                  validator: (value){
                  if(value!.isEmpty)
                  {
                  return "required";
                  }
                  return null;
                  },
                  onFieldSubmitted: (value) {
                  String course = value!;
                  dataList.add(value!);
                  print(dataList);
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
                  validator: (value){
                  if(value!.isEmpty)
                  {
                  return "required";
                  }
                  return null;
                  },
                  onFieldSubmitted: (value) {
                  String school = value!;
                  dataList.add(value!);
                  print(dataList);
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
                      });
                    },
                    ),
                    const Text("Currently Employed",style: TextStyle(fontSize: 12,color: Colors.blue)),
                  ],

                ),
                const SizedBox(height: 20),
                const Divider(indent: 3,endIndent: 3,thickness: 2),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Date Joined",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey
                  )
              ),
              Text("Date Exit",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey
                  )
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                      onFieldSubmitted: (value) {
                        String dob = value!;
                        dataList.add(value!);
                        print(dataList);
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "DD/MM/YYYY"
                      )
                  ),
                ),
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
                      onFieldSubmitted: (value) {
                        String place = value!;
                        dataList.add(value!);
                        print(dataList);
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "DD/MM/YYYY"
                      )
                  ),
                ),

              ]
            ),
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(onPressed: (){},
                      child: Text("SAVE")),
                )
          ]
    ),
    ),
    )
    );
  }
}
