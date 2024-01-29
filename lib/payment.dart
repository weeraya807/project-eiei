import 'package:flutter/material.dart';
import 'package:senior_project/psychologist.dart';
import 'package:senior_project/menu_consult.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment and Appointment Scheduling'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Payment Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Add your payment-related widgets and logic here
            ElevatedButton(
              onPressed: () {
                // You can add logic for payment processing here
                // After successful payment, navigate to the appointment scheduling page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AppointmentSchedulingPage()),
                );
              },
              child: Text('Proceed to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}

class AppointmentSchedulingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Scheduling'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Appointment Scheduling Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add your appointment scheduling widgets and logic here
          ],
        ),
      ),
    );
  }
}
