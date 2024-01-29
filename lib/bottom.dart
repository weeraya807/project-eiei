import 'package:flutter/material.dart';
import 'package:senior_project/menu_chatbot.dart';
import 'package:senior_project/menu_profile.dart';
import 'package:senior_project/menu_consult.dart';
import 'package:senior_project/menu_recommend.dart';
import 'package:senior_project/color.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // padding: EdgeInsets.only(left: 20, right: 20),
      // decoration: BoxDecoration(color: Color.fromRGBO(185, 233, 252, 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return Profile();
              })));
            },
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return chatBot();
              })));
            },
            icon: Icon(
              Icons.chat_bubble,
              color: kPrimaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return consult();
              })));
            },
            icon: Icon(
              Icons.medical_information_sharp,
              color: kPrimaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return Recommend();
              })));
            },
            icon: Icon(
              Icons.recommend,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

//  bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Color(0xFFE8E8E8),
//         selectedItemColor: Color(0xFF292929),
//         unselectedItemColor: Color(0xFF292929),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat_bubble),
//             label: 'Chatbot',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.medical_services),
//             label: 'Consult',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'Appointments',
//           ),
//         ],
//       ),
