// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class RecentUpdates extends StatefulWidget {
//   const RecentUpdates({Key? key}) : super(key: key);

//   @override
//   _RecentUpdatesState createState() => _RecentUpdatesState();
// }

// class _RecentUpdatesState extends State<RecentUpdates>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: [
//             Container(height: 30, width: double.infinity.w, color: Colors.red),
//             Container(
//                 height: 30, width: double.infinity.w, color: Colors.green),
//             Container(height: 30, width: double.infinity.w, color: Colors.blue)
//           ],
//         ),
//       ),
//     );
//   }
// }
