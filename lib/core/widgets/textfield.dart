import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan2win/core/utils/web_helper.dart';

import '../constants/colors.dart';
import '../constants/textstyles.dart';

Widget buildTextField(String hint, TextEditingController controller,
    bool isMultiLine, BuildContext context,
    {List<TextInputFormatter> inputFormatters = const [],
    String label = "",
    String? errorText = "",
    TextInputType textinputType = TextInputType.text,
    String? counterText,
    Function(String)? onChanged}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Visibility(
        visible: label.isNotEmpty || label != "",
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(label,
              style: primaryTextStyle.copyWith(
                fontSize: 15.sp,
              )),
        ),
      ),
      const SizedBox(height: 6),
      TextField(
        onChanged: onChanged,
        keyboardType: textinputType,
        inputFormatters: inputFormatters,
        style: secondaryTextStyle,
        controller: controller,
        cursorColor: AppColors.primaryBlueColor,
        maxLines: isMultiLine ? 4 : 1,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 1.0.sp, horizontal: 20.0.sp),
          errorText: errorText?.isNotEmpty == true ? errorText : null,
          counterText: counterText,
          hintText: hint,
          hintStyle: hintTextStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          filled: true,
          fillColor: const Color.fromRGBO(242, 242, 242, 1),
        ),
      ),
    ],
  );
}
