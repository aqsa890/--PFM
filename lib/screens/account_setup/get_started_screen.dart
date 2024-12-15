import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/account_setup/set_up_bording.dart';
import 'package:personal_finance_manager/screens/home_screen/home.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 21, 221),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Get started\n',
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '\nGet most out of your PFM account',
                            style: TextStyle(
                                fontSize: 12.sp, color: Colors.white60),
                          ),
                        ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
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
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "skip",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetupOnBoardingscreeen(),
                      ));
                },
                child: Container(
                  height: 115.h,
                  width: double.infinity.w,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(60, 151, 138, 244),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Verify your email address   \n',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    '\nThis is the bank account we would\n track and manage your spendings',
                                style: TextStyle(
                                    fontSize: 11.sp, color: Colors.white38),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 113.h,
                        width: 98.h,
                        child: Image.asset('assets/AccountSetup/sign.png'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                height: 115.h,
                width: double.infinity.w,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(60, 151, 138, 244),
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Connect your bank account\n',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text:
                                  '\nThis is the bank account we would\n track and manage your spendings',
                              style: TextStyle(
                                  fontSize: 11.sp, color: Colors.white38),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      height: 113.h,
                      width: 97.h,
                      child: Image.asset('assets/AccountSetup/bank.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                height: 115.h,
                width: double.infinity.w,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(60, 151, 138, 244),
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Tell us more about you     \n',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text:
                                  '\nThis is the bank account we would\n track and manage your spendings',
                              style: TextStyle(
                                  fontSize: 11.sp, color: Colors.white38),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      height: 113.h,
                      width: 107.h,
                      child: Image.asset('assets/AccountSetup/user.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
