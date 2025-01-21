import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:scan2win/core/constants/colors.dart';
import 'package:scan2win/core/utils/snackbar.dart';
import 'package:scan2win/core/utils/web_helper.dart';
import 'package:scan2win/model/register.dart';

import '../core/constants/textstyles.dart';
import '../core/services/firebase_services.dart';
import '../core/widgets/main_button.dart';
import '../core/widgets/textfield.dart';

class LotteryRegisterScreen extends StatefulWidget {

  const LotteryRegisterScreen({super.key});

  @override
  State<LotteryRegisterScreen> createState() => _LotteryRegisterScreenState();
}

class _LotteryRegisterScreenState extends State<LotteryRegisterScreen> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _upiIdController = TextEditingController();
  bool isLoading=false;
  File? _imageFile;

  Future<void> _registerLottery() async {

setState(() {
      isLoading=true;
});
    final name = _nameController.text.trim();
    final phoneNumber = "+91-${_phoneNumberController.text.trim()}";
    final upiId = _upiIdController.text.trim();
    final currentDate = DateTime.now();
    if (name.isEmpty || phoneNumber.isEmpty) {
      showSnackBar(context, "Name and Phone Number are required");
    } else {
      Register registration=Register(name: name, phoneNumber: phoneNumber, upiId: upiId, date:currentDate, slipDownloadUrl: "");
      await FirebaseServices().saveRegisterData("lottery", registration);
    showSnackBar(context, "Registration Successful");

    }
setState(() {
  isLoading=false;
});
  }

   _getLotteryDate()  {
    final date=DateTime.now();
    final daysToAdd=7-date.weekday;
    final lotteryDate=date.add(Duration(days: daysToAdd));
    final DateFormat formatter = DateFormat.MMMMEEEEd();
    final String formatted = formatter.format(lotteryDate);
    return formatted;
  }

  _selectImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.sp, vertical: 10.sp),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text("Weekly Lottery Registration",
                    style: primaryTextStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.btnColor,
                    )),
              ),
              SizedBox(height: 10.sp),
              Align(
                alignment: Alignment.center,
                child: Text("The next lottery will be on:",
                    style: primaryTextStyle.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w300,
                    )),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(_getLotteryDate().toString(),
                    style: primaryTextStyle.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    )),
              ),

              SizedBox(height: 30.sp),
              buildTextField("", _nameController, false, context,
                  label: "Name"),
              SizedBox(height: 20.sp),
              buildTextField("", _phoneNumberController, false, context,
                  label: "Phone Number"),

              SizedBox(height: 20.sp),
              buildTextField("", _upiIdController, false, context,
                  label: "UPI ID"),
              SizedBox(height: 20.sp),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Photo of the Transaction Slip",
                    style: primaryTextStyle.copyWith(
                      fontSize: 15.sp,
                    )),
              ),
              const SizedBox(height: 6),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(12),

              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  height: ScreenUtil().screenHeight*0.26,
                  width: double.infinity,
                  child: Center(
                    child:_imageFile==null? IconButton(onPressed: _selectImage, icon: Icon(Icons.add_a_photo_outlined)):GestureDetector(
                      onTap: _selectImage,
                        child:kIsWeb? Image.network(_imageFile!.path):Image(image:Image.file(_imageFile!).image,fit: BoxFit.cover,width: double.infinity,))
                  ),
                )
              ),
            ),




        
              SizedBox(height: 30.sp),
              LargeButton(icon: "", text: "Submit", onPressed: _registerLottery,isLoading: isLoading,),
            ],
          ),
        ),
      ),
    );
  }
}
