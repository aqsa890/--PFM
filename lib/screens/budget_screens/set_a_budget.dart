import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetAmountScreen extends StatefulWidget {
  const BudgetAmountScreen({super.key});

  @override
  State<BudgetAmountScreen> createState() => _BudgetAmountScreenState();
}

class _BudgetAmountScreenState extends State<BudgetAmountScreen> {
  int amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set a budget amount',
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '2 of 3',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/homeScreenAssets/HBL.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'HBL Bank',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Rs. 17000',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.keyboard_arrow_down),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            RichText(
              text: const TextSpan(
                  text: 'Based on your input, you would have',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: " Rs. 5700 ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                        text: 'left\n           out of ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: " 17000 ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                        text: 'in your HBL account ',
                        style: TextStyle(color: Colors.black)),
                  ]),
            ),
            SizedBox(
              height: 35.h,
            ),
            Text(
              'SET AMMOUNT',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      amount -= 100;
                    });
                  },
                  icon: const Icon(Icons.remove),
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                    foregroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 41, 57, 255),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 222, 224, 255),
                    ),
                  ),
                ),
                Text(
                  '  $amount',
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      amount += 100;
                    });
                  },
                  icon: const Icon(Icons.add),
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 41, 57, 255),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 222, 224, 255),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 120.w, child: const Divider()),
            SizedBox(
              height: 18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      amount = 1000;
                    });
                  },
                  child: Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 222, 224, 255),
                      borderRadius: BorderRadiusDirectional.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Rs.1000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                            255,
                            41,
                            57,
                            255,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      amount = 500;
                    });
                  },
                  child: Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 222, 224, 255),
                      borderRadius: BorderRadiusDirectional.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Rs. 500',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                            255,
                            41,
                            57,
                            255,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      amount = 300;
                    });
                  },
                  child: Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 222, 224, 255),
                      borderRadius: BorderRadiusDirectional.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Rs. 300',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                            255,
                            41,
                            57,
                            255,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 220.h,
            ),
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
                    'Next',
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
