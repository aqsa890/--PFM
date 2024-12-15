import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/auth_screens/sign_up.dart';

class PlanAhead extends StatelessWidget {
  const PlanAhead({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 57, 255),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  },
                  child: Container(
                    height: 30.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromRGBO(255, 255, 255, 200),
                              blurRadius: 35.r,
                              blurStyle: BlurStyle.inner),
                        ]),
                    child: Center(
                        child: Text(
                      "skip",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 85.h,
            ),
            SizedBox(
              height: 280,
              width: 270.w,
              child: Image.asset(
                'assets/piggyBank.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 250.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Plan ahead and manage\n     your money better',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Center(
                    child: Text(
                      '  Setup your budget for each category\n so you in control. Track categories you\n           spend the most money on',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Dots(),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                    child: Container(
                      height: 48.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 41, 66, 255),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class Dots extends StatelessWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 11.h,
          width: 7.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color.fromARGB(255, 41, 57, 218),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Container(
          height: 8.h,
          width: 8.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(100),
            color: Color.fromRGBO(8, 5, 5, 0.261),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Container(
          height: 8.h,
          width: 8.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(100),
            color: Color.fromRGBO(8, 5, 5, 0.261),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Container(
          height: 8.h,
          width: 8.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(100),
            color: Color.fromRGBO(8, 5, 5, 0.261),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
      ],
    );
  }
}
