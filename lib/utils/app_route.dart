import 'package:flutter/material.dart';

import '../screen/achievement/achievements_screen.dart';
import '../screen/carrier/carrier_screen.dart';
import '../screen/contact/contact_screen.dart';
import '../screen/declaration/declaration_screen.dart';
import '../screen/education/education_screen.dart';
import '../screen/experience/experience_screen.dart';
import '../screen/hobby/hobbies_screen.dart';
import '../screen/home/home_screen.dart';
import '../screen/person/personalDetails_screen.dart';
import '../screen/project/projects_screen.dart';
import '../screen/reference/references_screen.dart';
import '../screen/resume/resume_screen.dart';
import '../screen/skill/technicalSkills_screen.dart';
import '../screen/splash/splash_screen.dart';

Map<String,WidgetBuilder> app_route={
  "/":(context) => SplashScreen(),
  "home":(context) => HomeScreen(),
  "contact":(context) => ContactScreen(),
  "carrier":(context) => CarrierScreen(),
  "person":(context) => PersonalDetailsScreen(),
  "education":(context) => EducationScreen(),
  "experience":(context) => ExperienceScreen(),
  "skills":(context) => TechnicalSkillsScreen(),
  "hobby":(context) => HobbiesScreen(),
  "projects":(context) => ProjectsScreen(),
  "achievement":(context) => AchievementsScreen(),
  "reference":(context) => ReferencesScreen(),
  "declaration":(context) => DeclarationScreen(),
  "resume":(context) => ResumeScreen(),
};

