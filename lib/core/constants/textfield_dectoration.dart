import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final InputDecoration textFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 1.0.sp, horizontal: 20.0.sp),
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
);
