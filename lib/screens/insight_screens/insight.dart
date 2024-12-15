import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsightScreen extends StatelessWidget {
  const InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 21, 221),
      bottomSheet: Container(
        height: 445.h,
        width: double.infinity.w,
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
              Text(
                'Recent updates',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => RecentUpdates(),
                //     ),
                //   );
                // },
                child: const InsightsContents(
                    text: 'PFM', image: 'assets/Insights/1.png'),
              ),
              // SizedBox(
              //   height: 3.h,
              // ),
              const InsightsContents(
                  text: 'Paystack', image: 'assets/Insights/2.png'),

              const InsightsContents(
                  text: 'PiggyVest', image: 'assets/Insights/3.png'),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Viewed updates',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 10.h,
              ),
              const InsightsContents(
                  text: 'Carbon', image: 'assets/Insights/4.png'),
              // SizedBox(
              //   height: 3.h,
              // ),
              const InsightsContents(
                  text: 'Abeg', image: 'assets/Insights/5.png'),

              const InsightsContents(
                  text: 'Patrica', image: 'assets/Insights/6.png'),
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
            Center(
              child: Text(
                'Insights',
                style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 63.h,
              width: 350.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(150, 24, 40, 150),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 42.h,
                      width: 41.w,
                      child: Image.asset('assets/Insights/Icon.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Insights\n',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: 'Balance Trend',
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 47.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Rs 17632.86\n',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: '+4.3%',
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.green,
                              ),
                            ),
                            TextSpan(
                              text: ' vs last week',
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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

class InsightsContents extends StatelessWidget {
  const InsightsContents({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;
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
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Icon(
              Icons.check_circle,
              color: Color.fromARGB(255, 44, 21, 221),
              size: 20,
            )
          ],
        ),
      ],
    );
  }
}
