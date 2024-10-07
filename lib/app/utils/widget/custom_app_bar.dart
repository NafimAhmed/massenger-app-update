




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// Define a reusable AppBar widget
PreferredSizeWidget buildCustomAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () {
        Get.toNamed('/chatting-list'); // Handle back navigation
      },
    ),
    title: Row(
      children: [
        // Profile Picture and Name
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * 0.025, // Responsive radius based on screen height
          backgroundImage: const AssetImage('assets/1.png'), // Add your image path here
        ),
        SizedBox(width: 8), // Small fixed width for better spacing control
        Expanded(
          child: Text(
            'Micheal David',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis, 
              fontSize: 12.sp, // Ensure text doesn't overflow
            ),
          ),
        ),
      ],
    ),
    actions: [
      // "Assign to AI" button
      Flexible(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w), // Reduced padding with flutter_screenutil
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.2, // Reduced button width
            child: TextButton(
              onPressed: () {
                // Handle Assign to AI action
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h), // Slightly reduced padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Assign to AI',
                style: TextStyle(color: Colors.white, fontSize: 10), // Adjusted font size
                overflow: TextOverflow.ellipsis, // Prevent text overflow
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 4.w), // Reduced space between buttons

      // "Assign to Team" button with reduced width
      Flexible(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w), // Reduced padding
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.25, // Reduced button width
            child: TextButton(
              onPressed: () {
                // Handle Assign to Team action
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.grey),
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h), // Slightly reduced padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Assign to Team',
                      style: TextStyle(color: Colors.black, fontSize: 10), // Adjusted font size
                      overflow: TextOverflow.ellipsis, // Prevent text overflow
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.black, size: 18), // Adjusted icon size
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 8.w), // Reduced final padding
    ],
  );
}
