import 'package:flutter/material.dart';

class CarrierScreen extends StatefulWidget {
  const CarrierScreen({super.key});

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
          key: key,
          child: Scaffold(
            appBar: AppBar(title: const Text("Carrier Objective"),
       centerTitle: true,
      toolbarHeight: 180,
      backgroundColor: Colors.blue.shade700,
      leading:  Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white
      ),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Carrier Objective",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty)
                      {
                        return "Description is required";
                      }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    String carrier = value!;
                  },
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                    hintText: "Description"
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Text("Current Designation (Experienced Candidate) ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      return "Designation is required";
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    String designation = value!;
                  },
                  maxLines: 2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                      hintText: "Software Engineer"
                  ),
                ),

              ],
          ),
        ),
      ),
    ),
        )
    );
  }
}
