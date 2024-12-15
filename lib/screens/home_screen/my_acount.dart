import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Accounts'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                height: 50.h,
                width: 55.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/homeScreenAssets/HBL.png',
                      ),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Habib Bank',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 27.h,
            ),
            Container(
              height: 160.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Type of account',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Savings',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Account No',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '16926969',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Available Balance',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Rs. 14500',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date Added',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '02/08/2024, 3:22 AM',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              height: 190.h,
              width: double.infinity.w,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Transactions',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 27.h,
                          width: 27.w,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black12,
                          foregroundColor: Colors.blueAccent,
                          child: Text(
                            "A",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: RichText(
                            text: TextSpan(
                              text: 'Ali Okara\n',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text: 'Meezan Bank 12:03 AM',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 11.sp),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Text(
                          '+Rs 4000',
                          style: TextStyle(
                              color: Colors.green[500],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 19.h),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black12,
                          foregroundColor: Colors.blueAccent,
                          child: Text(
                            "A",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: RichText(
                            text: TextSpan(
                              text: 'Ali Okara\n',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text: 'Meezan Bank 12:03 AM',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 11.sp),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Text(
                          '+Rs 4000',
                          style: TextStyle(
                              color: Colors.green[500],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 19.h),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black12,
                          foregroundColor: Colors.blueAccent,
                          child: Text(
                            "A",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: RichText(
                            text: TextSpan(
                              text: 'Ali Okara\n',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text: 'Meezan Bank 12:03 AM',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 11.sp),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Text(
                          '+Rs 4000',
                          style: TextStyle(
                              color: Colors.green[500],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
