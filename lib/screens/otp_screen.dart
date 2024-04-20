import 'package:flutter/material.dart';
import 'package:project/screens/otp_verify_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forgot Paswword", 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Please Enter Your Number. You Will Receive A OTP To Create Or Set A New Password Via Number", 
              style: TextStyle(
                fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push
                      (context, 
                      MaterialPageRoute(
                        builder: (context) => OTPVerifyScreen(),
                      ));
                },
                child: Text(
                  "Send Code", 
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xFFDB3022),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}