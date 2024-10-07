import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButtonsWidget extends StatelessWidget {
  const ActionButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w), // Responsive padding
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey.shade300), // Border on top
        ),
      ),
      child: Column(
        children: [
          // First row (Text Field + Mic + Send Icon)
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write your message....',
                    hintStyle: TextStyle(
                      fontSize: 14.sp, // Responsive font size
                      color: Colors.grey,
                    ),
                    border: InputBorder.none, // No border for text field
                  ),
                ),
              ),
              SizedBox(width: 10.w), // Space between text field and mic button
              Icon(
                Icons.mic,
                color: Colors.grey,
                size: 24.sp, // Responsive icon size
              ),
              SizedBox(width: 10.w), // Space between mic and send button
              Icon(
                Icons.send,
                color: Colors.pink,
                size: 24.sp, // Responsive icon size
              ),
            ],
          ),
          SizedBox(height: 10.h), // Space between the two lines

          // Second row (Action buttons)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensure proper spacing
            children: [
              // Text buttons with Flexible to adjust to screen size
              Flexible(
                child: TextButton(
                  onPressed: () {
                    // Handle Respond
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // Remove padding
                    minimumSize: Size(0, 0), // Optional: Ensure it doesn't take extra space
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                  ),
                  child: Text(
                    'Respond',
                    style: TextStyle(color: Colors.pink, fontSize: 12.sp),
                  ),
                ),
              ),
              SizedBox(width: 2.w), // Adjusted space
              Flexible(
                child: TextButton(
                  onPressed: () {
                    // Handle Comment
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // Remove padding
                    minimumSize: Size(0, 0), // Ensure no extra space is taken
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
                  ),
                  child: Text(
                    'Comment',
                    style: TextStyle(color: Colors.black, fontSize: 12.sp),
                  ),
                ),
              ),
              // Divider between buttons
              Container(
                height: 20.h, // Responsive height
                width: 1.w, // Responsive divider width
                color: Colors.grey.shade300,
                margin: EdgeInsets.symmetric(horizontal: 6.w), // Adjusted margin
              ),

              // Icons with spacing and reduced sizes to fit on the screen
              Image.asset(
                'assets/messageText.png', // Path to your local asset image
                width: 16.w,
                height: 16.h,
              ),
              SizedBox(width: 2.w), // Adjusted space

              Image.asset(
                'assets/saved.png', // Path to your local asset image
                width: 16.w,
                height: 16.h,
              ),

              Container(
                height: 20.h, // Responsive height
                width: 1.w, // Responsive divider width
                color: Colors.grey.shade300,
                margin: EdgeInsets.symmetric(horizontal: 6.w), // Adjusted margin
              ),
              Image.asset(
                'assets/emoji.png', // Path to your local asset image
                width: 16.w,
                height: 16.h,
              ),
              SizedBox(width: 2.w), // Adjusted space

              Image.asset(
                'assets/galary.png', // Path to your local asset image
                width: 16.w,
                height: 16.h,
              ),
              SizedBox(width: 2.w), // Adjusted space

              Image.asset(
                'assets/file.png', // Path to your local asset image
                width: 16.w,
                height: 16.h,
              ),
            ],
          ),
        ],
      ),
    );
  }}