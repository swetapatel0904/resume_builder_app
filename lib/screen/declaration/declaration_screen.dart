import 'package:flutter/material.dart';

import '../../utils/global.dart';

class DeclarationScreen extends StatefulWidget {
  const DeclarationScreen({super.key});

  @override
  State<DeclarationScreen> createState() => _DeclarationScreenState();
}

class _DeclarationScreenState extends State<DeclarationScreen> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Declaration"),
      centerTitle: true,
      toolbarHeight: 180,
      backgroundColor: Colors.blue.shade700,
      leading:  const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white
      ),
    ),
              body: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           const Text("Declaration",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue
                              )
                          ),
                          Switch(
                            value: isOn,
                            onChanged: (value) {
                            setState(() {
                              isOn= value!;
                            });
                          },)
                        ],
                      ),
                      Visibility(
                        visible:isOn,
                        child:  Column(
                          children: [
                            const SizedBox(
                              height: 80,
                            ),
                            TextFormField(
                                validator: (value){
                                  if(value!.isEmpty)
                                  {
                                    return "Description is required";
                                  }
                                  return null;
                                },

                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Description"
                                )
                            ),
                            const SizedBox(height: 20),
                            const Divider(indent: 3,endIndent: 3,thickness: 2),
                            const SizedBox(height: 20),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey
                                    )
                                ),
                                Text("Place(Interview\nvenue/city)",
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

                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Eg.Surat"
                                      )
                                  ),
                                ),
                              ],
                            )
                          ],
                  ),
                      ),

                  ]
    ),
                ),
              )
    );
  }
}
