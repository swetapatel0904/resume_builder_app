import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Resume Workspace",style: TextStyle(
            )),
            centerTitle: true,
            toolbarHeight: 180,
            backgroundColor: Colors.blue.shade700,
            leading: const Icon(Icons.menu,color: Colors.white),
            flexibleSpace: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 30,
                child:const Text("Build Option",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                )
                ),
              ),
            ),
    ),
          body: Column(
            children: [
              resumeList(title: "Contact Info", image: Icons.contacts_outlined,route:'contact'),
              resumeList(title: "Carrier Objective", image: Icons.cabin_outlined,route:'carrier'),
              resumeList(title: "Personal Details", image: Icons.person_2_outlined,route:'person'),
              resumeList(title: "Education", image: Icons.cast_for_education_outlined,route:'education'),
              resumeList(title: "Experiences", image: Icons.book,route:'experience'),
              resumeList(title: "Technical Skills", image: Icons.computer_outlined,route:'skills'),
              resumeList(title: "Hobbies", image: Icons.skateboarding_outlined,route:'hobby'),
              resumeList(title: "Projects", image: Icons.padding_outlined,route:'projects'),
              resumeList(title: "Achievements", image: Icons.add_chart_outlined,route:'achievements'),
              resumeList(title: "References", image: Icons.room_preferences_outlined,route:'reference'),
              resumeList(title: "Declaration",image: Icons.deck_outlined,route:'declaration'),
              resumeList(title: "Resume",image: Icons.receipt_long_outlined,route:'resume'),
            ],
          ),
    )
    );
  }
  Widget resumeList({required String title, required IconData image, required String route})
  {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '$route');
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blueGrey))
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(image,size: 25),
            SizedBox(
              width: 20,
            ),
            Text("$title",style: TextStyle(
              fontSize: 20
            )),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
