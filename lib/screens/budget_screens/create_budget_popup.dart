
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_finance_manager/screens/budget_screens/create_budget.dart';

class NewBudgetPopUP extends StatelessWidget {
  const NewBudgetPopUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color.fromARGB(255, 44, 21, 221),
        body: Container(
      height: double.infinity.h,
      width: double.infinity.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/budget/abc.png'), fit: BoxFit.fitHeight),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Container(
                height: 350.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 55, 29, 253),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150.h,
                        width: 258.w,
                        child: Image.asset(
                          'assets/budget/Frame130.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Budget',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Overspend no more',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Text(
                        'Get ready to start using budgets for your\n                  daily financial app.',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateNewBudget(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              'Create a New Budget',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 41, 57, 255),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
