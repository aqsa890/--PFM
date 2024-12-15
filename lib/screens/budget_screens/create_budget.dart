import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/budget_screens/set_a_budget.dart';

class CreateNewBudget extends StatelessWidget {
  const CreateNewBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '1 of 3',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create your budget',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 33.sp,
                  color: Colors.black),
            ),
            SizedBox(height: 5.h),
            const Text(
              "Set the maximum you'd like to spend each week or month? Type in the amount below",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            SizedBox(height: 25.h),
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      labelText: 'Name of budget',
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                        labelText: 'cycle of budget',
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 41, 57, 255),
                        ),
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      labelText: 'Selected an account',
                      suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 19.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BudgetAmountScreen(),
                  ),
                );
              },
              child: Container(
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 41, 57, 255),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    'continue',
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
