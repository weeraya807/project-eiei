import 'package:flutter/material.dart';
import 'package:senior_project/color.dart';
import 'package:senior_project/bottom.dart';
import 'package:senior_project/psychologist.dart';
import 'package:senior_project/payment.dart';

class consult extends StatefulWidget {
  @override
  State<consult> createState() => _consultState();
}

class _consultState extends State<consult> {
  var selected;

  @override
  void initState() {
    super.initState();
    selected = 0;
  }

  _buildDoctorInfo(Doctor doctor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doctor.name,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 8),
          Text(
            'วุฒิการศึกษา ${doctor.education}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'ประสบการณ์ ${doctor.experience}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'ค่าใช้จ่าย ${doctor.fee}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'เวลาให้บริการ ${doctor.availableTime}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  _childDoctorImage(Doctor doctor) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(doctor.imageURL),
        ),
      ),
    );
  }

  _buildRadioButton(Doctor doctor, int index) {
    return Radio(
      value: index,
      groupValue: selected,
      onChanged: (value) {
        setState(() {
          selected = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เลือกนักจิต'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'หัวข้อปัญหา',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                for (var i = 0; i < doctors.length; i++)
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        // รูปภาพ
                        _childDoctorImage(doctors[i]),
                        SizedBox(width: 16),
                        // ชื่อนักจิตวิทยา
                        _buildDoctorInfo(doctors[i]),
                        // ปุ่มเลือก
                        _buildRadioButton(doctors[i], i),
                      ],
                    ),
                  ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement the action when the Submit button is pressed
                if (selected != null && selected < doctors.length) {
                  // Show additional information or navigate to the next screen
                  // based on the selected psychologist
                } else {
                  // Display an error message or prompt to select a psychologist
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
