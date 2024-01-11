
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_maker_app/utils/global.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  String path ="";
  int index=0;
TextEditingController txtName = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtMobile = TextEditingController();
TextEditingController txtAddress = TextEditingController();
GlobalKey<FormState>key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 180,
          backgroundColor: Colors.blue,
          leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
          centerTitle: true,
          title: const Text(
            "Contact Information",
            style: TextStyle(color: Colors.white),
          ),
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  appbar(
                      width: index == 0 ? 3 : 0.1, title: "Contact", indexed: 0),
                  appbar(width: index == 1 ? 3 : 0.1, title: "Image", indexed: 1),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: IndexedStack(
            index: index,
            children: [
              contact(),
              photo(),
            ],
          ),
      ),
        ),
    );
  }
  Widget appbar(
      {required String title, required double width, required int indexed}) {
    return InkWell(
      onTap: () {
        setState(() {
          index = indexed;
        });
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.30,
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.only(left: 35),
        decoration: BoxDecoration(
            border:
            Border(bottom: BorderSide(width: width, color: Colors.yellow))),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget contact()
  {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsets.only(left:10,right: 10),
        margin:const EdgeInsets.only(top:10),
        width: MediaQuery.sizeOf(context).width*0.80,
        decoration: const BoxDecoration(
            color: Colors.white70,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 1,
              )
            ]
        ),
        child:   Column(
          mainAxisSize:MainAxisSize.min,
          children: [
            TextFormField(
              validator: (value) {
                if(value!.isEmpty)
                  {
                    return "Name is required";
                  }
                return null;
              },
              controller: txtName,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: Text("Name"),
                prefixIcon: Icon(Icons.account_circle_outlined),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty)
                {
                  return "Email is required ";
                }
                else if(!RegExp("^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$").hasMatch(value))
                  {
                    return "enter the valid email";
                  }
                return null;
              },
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty)
                {
                  return "Mobile No is required";
                }
                else if (value!.length!=10)
                  {
                    return "Enter the valid number";
                  }
                return null;
              },
              controller: txtMobile,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  label: Text("Mobile"),
                  prefixIcon: Icon(Icons.phone_android_outlined)
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              validator: (value) {
                if(value!.isEmpty)
                {
                  return "Address is required";
                }
                return null;
              },
              controller: txtAddress,
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                  label: Text("Address"),
                  prefixIcon: Icon(Icons.location_on_outlined),

              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              FocusScope.of(context).unfocus();
              if(key.currentState!.validate())
                {
                String name = txtName.text;
                String email = txtEmail.text;
                String mobile = txtMobile.text;
                String address = txtAddress.text;

                dataList.add(name);
                dataList.add(email);
                dataList.add(mobile);
                dataList.add(address);

                print(dataList);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data is saved")));

              }




              }, child: Text("Submit")
            )
          ],
        ),
      ),
    );
  }
  Widget photo() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20),
        height: MediaQuery.sizeOf(context).height * 0.30,
        width: MediaQuery.sizeOf(context).width * 0.85,
        color: Colors.white,
        child:  Stack(
          alignment: Alignment.center,
          children: [
            path==null?
            const CircleAvatar(
              radius: 90,
            ): CircleAvatar(
              radius: 90,
              backgroundImage: FileImage(File(path!)),
            ),
            Align(
                alignment: Alignment(0.5, 0.5),
                child: IconButton(
                  onPressed: () async{
                    ImagePicker picker = ImagePicker();
                    XFile? image = await picker.pickImage(source: ImageSource.camera);
                    setState(() {
                      path=image!.path;
                    });

                  },
                  icon: const Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.blueAccent,
                    weight: 50,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}