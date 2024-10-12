import 'package:flutter/material.dart';
import 'package:massenger_app3/app/core/app_icons.dart';
import 'package:massenger_app3/app/core/app_images.dart';
import 'package:massenger_app3/app/core/app_sizes.dart';
import 'package:massenger_app3/app/core/custom_app_text.dart';

class CustomChattingListView extends StatelessWidget {
  const CustomChattingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
     
        title: Row(
          children: [
            Container(
          padding: EdgeInsets.only(left: getWidth(20)),
          height: getHeight(50),
          width: getWidth(50),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(AppImages.profile,),fit: BoxFit.fill),
           
          )
        ),
            SizedBox(
              height: getHeight(25),
              width: getWidth(25),
              child: Image.asset(AppIcons.menu),
            ),
            SizedBox(width: getWidth(4),),
            CustomAppText(
              title: "All Channels", 
              fontSize: getWidth(14), 
              fontWeight: FontWeight.w400, 
              color: Color(0xff000000)
              ),
               SizedBox(width: getWidth(5),),
              Image.asset(AppIcons.arrow_down,)
          ],
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: getWidth(20)),
            child: Column(
              children: [
               Image.asset(AppIcons.multiselctor),
                CustomAppText(
                  title: "Multi select", 
                  fontSize: getWidth(12), 
                  fontWeight: FontWeight.w400, 
                  color: Color(0xff575757).withOpacity(0.7)
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

