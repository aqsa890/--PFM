import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/profile_screens/account.dart';
import 'package:personal_finance_manager/screens/profile_screens/settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 21, 221),
      bottomSheet: Container(
        height: 430.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAccount(),
                    ),
                  );
                },
                child: const Contents(
                  icon: (Icons.person),
                  text: 'My Account',
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingScreen(),
                      ),
                    );
                  },
                  child: const Contents(text: 'Setting', icon: Icons.settings)),
              SizedBox(
                height: 8.h,
              ),
              const Contents(
                  text: 'Help Center', icon: Icons.question_mark_sharp),
              SizedBox(
                height: 8.h,
              ),
              const Contents(text: 'Contract', icon: Icons.phone),
              SizedBox(
                height: 100.h,
              ),
              const Text(
                'You joined Brees on September 2021. It’s been 1 month\n  since then and our mission is still the same, help you\n             better manage your finance like a brees.',
                style: TextStyle(color: Colors.black26),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white54),
                ),
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            Row(
              children: [
                SizedBox(
                  height: 70.h,
                  width: 84.w,
                  child: const Image(
                    image: AssetImage('assets/Profile/Avatar.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Muhammad Huzaifa',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        'huzaifa123@gmail.com',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white54),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Contents extends StatelessWidget {
  const Contents({
    super.key,
    required this.text,
    required this.icon,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 35.h,
            width: 42.w,
            decoration: BoxDecoration(
              color: const Color.fromARGB(254, 187, 196, 252),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 27,
                color: const Color.fromARGB(253, 107, 127, 255),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 125.w,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          width: 110.w,
        ),
        const Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.black26,
        )
      ],
    );
  }
}
