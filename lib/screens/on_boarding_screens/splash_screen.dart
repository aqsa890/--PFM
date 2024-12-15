import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/on_boarding_screens/onbording_screen_1.dart';

class PFMScreen extends StatefulWidget {
  const PFMScreen({super.key});

  @override
  State<PFMScreen> createState() => _PFMScreenState();
}

class _PFMScreenState extends State<PFMScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MoneyGoesScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 57, 218),
      body: Center(
        child: Container(
          height: 100.h,
          width: 110.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(255, 255, 255, 200),
                  blurRadius: 35.r,
                )
              ]),
          child: Center(
            child: Text(
              'PFM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 44.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
