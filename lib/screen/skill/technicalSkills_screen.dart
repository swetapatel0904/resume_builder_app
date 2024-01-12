import 'package:flutter/material.dart';

import '../../utils/global.dart';

class TechnicalSkillsScreen extends StatefulWidget {
  const TechnicalSkillsScreen({super.key});

  @override
  State<TechnicalSkillsScreen> createState() => _TechnicalSkillsScreenState();
}

class _TechnicalSkillsScreenState extends State<TechnicalSkillsScreen> {
  List<TextEditingController> controllerList = [TextEditingController()];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new_outlined),
          centerTitle: true,
          title: const Text("Technical skills" ),
          toolbarHeight: 200,
        ),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(top: 30),
              width: MediaQuery.sizeOf(context).width*0.80,
              child: Column(
                children: [
                  Text("Enter your skills",style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10,),
                  Column(
                    children: List.generate(controllerList.length, (index) => TextFormField(
                      controller:controllerList[index] ,

                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                controllerList.removeAt(index);

                              });
                            },
                            icon:  Icon(Icons.delete)),
                        hintText: "c programming",
                      ),
                    ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      controllerList.add(TextEditingController());
                    });
                  }, child:Text("ADD")),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      for(int i=0;i<controllerList.length;i++)
                        {
                           String skill = controllerList[i].text;
                        }
                      dataList[4]['skill']= [];

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data is saved")));
                    });
                  }, child:Text("Save"))
                ],
              ),
            ),
          ),
        )
    );
  }
}

