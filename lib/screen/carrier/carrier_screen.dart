import 'package:flutter/material.dart';
import 'package:resume_maker_app/utils/global.dart';

class CarrierScreen extends StatefulWidget {
  const CarrierScreen({super.key});

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
  TextEditingController txtCarrier = TextEditingController();
  TextEditingController txtDesignation = TextEditingController();
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
          padding: const EdgeInsets.all(30),
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
                  controller:  txtCarrier ,
                  validator: (value){
                    if(value!.isEmpty)
                      {
                        return "Description is required";
                      }
                    return null;
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
                  controller: txtDesignation,
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      return "Designation is required";
                    }
                    return null;
                  },
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2,)),
                      hintText: "Software Engineer"
                  ),
                ),
                Center(
                  child: ElevatedButton(onPressed: (){
                    if(key.currentState!.validate())
                      {
                        String carrier = txtCarrier.text;
                        String designation = txtDesignation.text;

                        dataList[1]['carrier']=carrier;
                        dataList[1]['designation']=designation;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data is saved")));

                      }
                    txtCarrier.clear();
                    txtDesignation.clear();
                  }, child: Text("Save")),
                )
              ],
          ),
        ),
      ),
    ),
        )
    );
  }
}
