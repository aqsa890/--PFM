import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/home_screen/home.dart';

class SetupOnBoardingscreeen extends StatelessWidget {
  const SetupOnBoardingscreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 190.h,
            ),
            Center(
              child: SizedBox(
                height: 180.h,
                width: 120.w,
                child: Image.asset(
                  "assets/AccountSetup/rocket.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "  Let's get your account set up!\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w800),
                  children: [
                    TextSpan(
                      text:
                          "  \nAccount can be your bank, credit card\n                 or your digital wallet.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Container(
                height: 48.h,
                width: 300.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 41, 66, 255),
                ),
                child: Center(
                  child: Text(
                    "Let's get Started",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
