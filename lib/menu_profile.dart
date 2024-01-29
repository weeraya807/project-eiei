import 'package:flutter/material.dart';
import 'package:senior_project/bottom.dart';
import 'package:senior_project/color.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application for counseling about depression'),
        backgroundColor: kBackground, // Set app bar background color
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: kAccentColor, // Set container background color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/02/21/05/17/cat-3169476_640.jpg',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ยินดีต้อนรับ! คุณ Weeraya',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor, // Set text color
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'ประวัติการปรึกษา',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor, // Set text color
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: kPrimaryColor, // Set container background color
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.person_3_outlined,
                              color: kAccentColor, // Set icon color
                            ),
                            title: Text('1 ครั้ง'),
                            subtitle: Text('14 มกราคม 2567 12:00 น.'),
                            trailing: Text('หมอยศ'),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.person_outline,
                              color: kAccentColor, // Set icon color
                            ),
                            title: Text('1 ครั้ง'),
                            subtitle: Text('21 มกราคม 2567 14:00 น.'),
                            trailing: Text('หมอสมชาย'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'ข้อมูลการนัดครั้งถัดไป',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor, // Set text color
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: kPrimaryColor, // Set container background color
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '15 กุมภาพันธ์ 2567',
                            style: TextStyle(
                              fontSize: 16,
                              color: kAccentColor, // Set text color
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'นายแพทย์คงดี',
                            style: TextStyle(
                              fontSize: 16,
                              color: kAccentColor, // Set text color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
