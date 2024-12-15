import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/auth_screens/sign_up.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Text(
              'General',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 35.w,
            ),
            Row(
              children: [
                Text(
                  'Reset Password',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 160.w,
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black38,
                )
              ],
            ),
            SizedBox(
              height: 25.w,
            ),
            Row(
              children: [
                Text(
                  'Notifications      ',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 160.w,
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black38,
                )
              ],
            ),
            SizedBox(
              height: 55.w,
            ),
            Text(
              'Security',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 35.w,
            ),
            Row(
              children: [
                Text(
                  'Privacy Policy    ',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 160.w,
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black38,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Choose what data you share with us',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 50.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
              child: Container(
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 41, 57, 255),
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
