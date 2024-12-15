import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/auth_screens/sign_up.dart';
import 'package:personal_finance_manager/screens/welcome_screen/welcome.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(20, 255, 255, 255),
        title: Text(
          'Login',
          style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10.h),
            Text(
              'Complete the sign up to get started',
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
            ),
            SizedBox(height: 24.h),
            SizedBox(height: 8.h),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color.fromARGB(255, 41, 57, 255),
                    ),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'forgot password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 57, 255),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 41, 57, 255),
              )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ));
              },
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 41, 57, 255),
              )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
