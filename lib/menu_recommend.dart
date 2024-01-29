import 'package:flutter/material.dart';
import 'package:senior_project/color.dart';
import 'package:senior_project/bottom.dart';

class Recommend extends StatefulWidget {
  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คำแนะนำเกี่ยวกับโรคซึมเศร้า'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ส่วนหัวข้อ
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'โรคซึมเศร้า',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'โรคซึมเศร้าเป็นโรคทางจิตที่ทำให้รู้สึกหดหู่และท้อแท้ตลอดเวลา มีสาเหตุมาจากตัวประสาท สารเคมีในสมอง และปัจจัยทางสภาพแวดล้อม',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // ส่วนคำแนะนำ
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'คำแนะนำ:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),

                    // รายการคำแนะนำ
                    RecommendationItem(
                      title: 'การรักษาทางจิตเวช',
                      description: 'การพูดคุยกับนักจิตวิทยาหรือนักจิตบำบัด',
                    ),
                    RecommendationItem(
                      title: 'การออกกำลังกาย',
                      description: 'การออกกำลังกายสามารถช่วยลดอาการซึมเศร้าได้',
                    ),
                    RecommendationItem(
                      title: 'การหาซื่อคราว',
                      description:
                          'หากมีอาการซึมเศร้าหลายเดือน ควรหาความช่วยเหลือจาก...',
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

class RecommendationItem extends StatelessWidget {
  final String title;
  final String description;

  RecommendationItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
