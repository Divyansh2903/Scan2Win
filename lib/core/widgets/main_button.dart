import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../constants/textstyles.dart';

class LargeButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;

  const LargeButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(48),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
        child:isLoading?const Center(child: CircularProgressIndicator(color: Colors.white,),) : Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: icon.isNotEmpty,
              child: Image(
                image: AssetImage('assets/icons/$icon.png'),
                height: 15.h,
                width: 15.w,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 10),
            Text(text, style: primaryTextStyle.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class CommonFloatingButton extends StatelessWidget {
  final VoidCallback? onTap;
  const CommonFloatingButton({super.key, this.onTap});

  @override
  FloatingActionButton build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: const Color(0xFF6750A4),
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
