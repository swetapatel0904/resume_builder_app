import 'package:flutter/material.dart';

class HobbiesScreen extends StatefulWidget {
  const HobbiesScreen({super.key});

  @override
  State<HobbiesScreen> createState() => _HobbiesScreenState();
}

class _HobbiesScreenState extends State<HobbiesScreen> {
  List<TextEditingController> controllerList = [TextEditingController()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new_outlined),
          centerTitle: true,
          title: const Text("Hobbies" ),
          toolbarHeight: 200,
        ),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              width: MediaQuery.sizeOf(context).width*0.80,
              child: Column(
                children: [
                  const Text("Enter your Hobbies",style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10,),
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
                            icon:  const Icon(Icons.delete)),
                        hintText: "Enter your hobbies",
                      ),
                    ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      controllerList.add(TextEditingController());
                    });
                  }, child:const Text("ADD")),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      //   for(int i=0;i<controllerList.length;i++)
                      //     {
                      //        List <String>hobby = [controllerList[i].text];
                      //     }
                      //   dataList[4]['hobby']= [];
                      //
                      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Data is saved")));
                    });
                  }, child:const Text("Save"))
                ],
              ),
            ),
          ),
        )
    );
  }
}
