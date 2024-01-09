import 'package:flutter/material.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  String selectedGroupValue = "Married";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: const Text(
        "Personal Details"),
              centerTitle: true,
              toolbarHeight: 180,
              backgroundColor: Colors.blue.shade700,
              leading:  Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white
              ),
              ),
              body: Center(
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.sizeOf(context).height*0.70,
                  width: MediaQuery.sizeOf(context).width*0.80,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black12,blurRadius: 5,spreadRadius: 2),
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("DOB",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                            hintText: "DD/MM/YY"
                        )
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Marital Status",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        ),
                      ),
                      SizedBox(
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
                          Text("Single",style: TextStyle(fontSize: 18))
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
                          Text("Married",style: TextStyle(fontSize: 18))
                        ],
                      ),

                    ],
                  ),


                ),

              )
    ),
    );
  }
}
