import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/home_screen/my_acount.dart';
import 'package:personal_finance_manager/screens/home_screen/search_accounts.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 21, 221),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: ' Hello ',
                      style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      children: [
                        TextSpan(
                          text: " John\n",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                              color: Colors.white),
                        ),
                        TextSpan(
                          text: " ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                              color: Colors.white),
                        ),
                        TextSpan(
                          text: "Your finances are looking good",
                          style:
                              TextStyle(fontSize: 13.sp, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(150, 24, 40, 150),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SearchAccountsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(150, 24, 40, 150),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                height: 270.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(190, 17, 29, 106),
                  borderRadius: BorderRadius.circular(25),
                  // image: DecorationImage(
                  //     image: AssetImage('assets/homeScreenAssets/Vector.png'),
                  //     fit: BoxFit.fill,
                  //     ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 110.w,
                        ),
                        SizedBox(
                          height: 60.h,
                          width: 80.w,
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/homeScreenAssets/Group2.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyAccountScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 30.h,
                            width: 30.w,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(150, 24, 40, 150),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.white38,
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'Your Available balance is ',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white54),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Rs 11400 ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27.sp,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'By this time last month, you spent\n         slightly higher (Rs 11770)',
                      style: TextStyle(fontSize: 13.sp, color: Colors.white54),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'HBL  ',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white54),
                              ),
                              Text(
                                'Rs 7000.00',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white54),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Meezan bank',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white54),
                              ),
                              Text(
                                'Rs 3000.00',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white54),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pay pal',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white54),
                              ),
                              Text(
                                'Rs 1400.00',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white54),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 70.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(190, 17, 29, 106),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 45.h,
                      width: 49.w,
                      child: Image.asset(
                        'assets/homeScreenAssets/Group.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Text(
                            'Sort your transactions',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15.sp),
                          ),
                          Text(
                            '                       ',
                            style: TextStyle(fontSize: 4.sp),
                          ),
                          Text(
                            'Get points for sorting your\ntransactions',
                            style: TextStyle(
                                fontSize: 13.sp, color: Colors.white38),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(150, 24, 40, 150),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                width: double.infinity.w,
                child: Text(
                  'My Budgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white38,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 160.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(60, 151, 138, 244),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'You have',
                            style: TextStyle(
                                color: Colors.white38, fontSize: 15.sp),
                          ),
                          Container(
                            height: 27.h,
                            width: 27.w,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(150, 24, 40, 150),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.white38,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //     // height: .h,
                      //     ),
                      const Text(
                        'Rs 15,400',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        'Left out of Rs 60,500 budgeted',
                        style:
                            TextStyle(color: Colors.white38, fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const LinearProgressIndicator(
                        value: 40.880 / 60.888,
                        backgroundColor: Colors.white12,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 20.h,
                            width: 22.w,
                            child: Image.asset(
                              'assets/homeScreenAssets/Title.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Sapa go soon catch you bros, calm down!!',
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 13.sp),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              SizedBox(
                width: double.infinity.w,
                child: Text(
                  'Transactions',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white38,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 185.h,
                width: double.infinity.w,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(60, 151, 138, 244),
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
                                color: Colors.white38, fontSize: 15.sp),
                          ),
                          Container(
                            height: 27.h,
                            width: 27.w,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(150, 24, 40, 150),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.white38,
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
                            backgroundColor: Colors.white70,
                            foregroundColor: Colors.blueAccent,
                            child: Text(
                              "J",
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
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                    text: 'Meezan Bank 12:03 AM',
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 11.sp),
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
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white70,
                            foregroundColor: Colors.blueAccent,
                            child: Text(
                              "J",
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
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                    text: 'Meezan Bank 12:03 AM',
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 11.sp),
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
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white70,
                            foregroundColor: Colors.blueAccent,
                            child: Text(
                              "J",
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
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                    text: 'Meezan Bank 12:03 AM',
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 11.sp),
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
              SizedBox(
                height: 23.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
