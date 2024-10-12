import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:massenger_app3/app/modules/chattingList/custom_chatting_list/custom_chatting_list_view.dart';
import 'package:massenger_app3/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil for responsive design
    ScreenUtil.init(context, designSize: const Size(360, 690)); // Use 360x690 as default

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4FB),
      body: Stack(
        children: [
          // Background Ellipse
          Positioned(
            top: -146.h,
            left: -210.w,
            child: Container(
              width: 500.w, // Responsive width for the ellipse
              height: 340.h, // Responsive height for the ellipse
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.elliptical(588.w, 407.h), // Elliptical shape
                ),
              ),
            ),
          ),
          // Main Content
          Padding(
            padding: EdgeInsets.all(20.w), // Dynamic padding based on screen width
            child: Column(
              children: [
                // Expanded widget to push content to the top
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: GoogleFonts.montserrat(
                          fontSize: 22.sp, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'MessageMind',
                        style: GoogleFonts.montserrat(
                          fontSize: 22.sp, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 150.h), // Responsive vertical spacing
                      Text(
                        'Sign In',
                        style: GoogleFonts.montserrat(
                          fontSize: 22.sp, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Enter your email or password to login.',
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp, // Responsive font size
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 30.h), // Responsive vertical spacing
                      Text(
                        "Email",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFFEA4B98),
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 7.h), // Responsive vertical spacing
                      TextField(
                        decoration: InputDecoration(
                          hintText: "abc@gmail.com", // Placeholder text
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 12.sp, // Responsive font size
                          ),
                          labelStyle: GoogleFonts.montserrat(
                            color: const Color(0xFFEA4B98),
                            fontSize: 14.sp, // Consistent font size with screen util
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.r), // Responsive border radius
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.5.w, // Responsive border width
                            ),
                          ),
                          filled: true, // Fill background
                          fillColor: Colors.white, // Background color
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12.h, // Responsive vertical padding
                            horizontal: 20.w, // Responsive horizontal padding
                          ),
                          suffixIcon: Image.asset(
                            'assets/mobile.png',
                            width: 12.w, // Responsive icon size
                            height: 12.h,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.r),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1.5.w,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.r),
                            borderSide: BorderSide(
                              color: const Color(0xFFEA4B98),
                              width: 1.5.w,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h), // Responsive vertical spacing
                      Row(
                        children: [
                          Text(
                            "Password",
                            style: GoogleFonts.montserrat(
                              color: const Color(0xFFEA4B98),
                              fontSize: 14.sp,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Forget Password?",
                            style: GoogleFonts.montserrat(
                              color: const Color(0xFFEA4B98),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.h),
                      TextField(
                        obscureText: true, // This is for password
                        decoration: InputDecoration(
                          hintText: "**********", // Placeholder text
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 14.sp,
                          ),
                          labelStyle: GoogleFonts.montserrat(
                            color: const Color(0xFFEA4B98),
                            fontSize: 12.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.r),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.5.w,
                            ),
                          ),
                          filled: true, // Fill background
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12.h,
                            horizontal: 20.w,
                          ),
                          suffixIcon: Image.asset(
                            'assets/lockicon.png',
                            width: 12.w, // Responsive icon size
                            height: 12.h,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.r),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1.5.w,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.r),
                            borderSide: BorderSide(
                              color: const Color(0xFFEA4B98),
                              width: 1.5.w,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
      
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to Chatting List
                            // Get.offNamed('/chatting-list');
                            Get.to(CustomChattingListView());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEA4B98), // Background color
                            padding: EdgeInsets.symmetric(
                              vertical: 12.h, // Responsive padding
                            ),
                            minimumSize: Size(double.infinity, 30.h), // Responsive button size
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17.r),
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        color: Colors.grey[600],
                        fontSize: 14.sp, // Responsive font size
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: "Don't have an account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "Sign up",
                          style: GoogleFonts.montserrat(
                            color: const Color(0xFFEA4B98),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               // SizedBox(height: .h), // Responsive vertical spacing
              ],
            ),
          ),
      
      
      
      
      
      
      
      
          // Stack for logos positioned at the right corner
          Positioned(
            right: -34.w, // Responsive positioning
            top: -16.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Pink circular background
                Container(
                  width: 170.w, // Responsive width
                  height: 170.h, // Responsive height
                  decoration: BoxDecoration(
                    color: const Color(0xFFEA4B98),
                    shape: BoxShape.circle,
                  ),
                ),
                // Image at the center of the circle
                Image.asset(
                
                  'assets/logo.png', // Your image path here
                  width: 100.w, // Responsive image width
                  height: 125.h, // Responsive image height
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
      
      
      
      
      
      
      
        ],
      ),
    );
  }
}