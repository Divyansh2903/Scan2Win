import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:scan2win/core/constants/textstyles.dart';
import 'package:scan2win/model/register.dart';

class SingleRegistrationTile extends StatelessWidget {
  final Register register;
  const SingleRegistrationTile({super.key,required this.register});

  showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Copy Phone Number'),
              onTap: () {
                Clipboard.setData(ClipboardData(text: register.phoneNumber));
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance),
              title: const Text('Copy UPI ID'),
              onTap: () {
                Clipboard.setData(ClipboardData(text: register.upiId));
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              RichText(
                text: TextSpan(
                  text: "Name: ",
                  style:hintTextStyle.copyWith(fontSize: 13.sp),
                  children: [
                    TextSpan(
                      text: register.name,
                      style: primaryTextStyle.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Phone: ",
                  style:hintTextStyle.copyWith(fontSize: 13.sp),
                  children: [
                    TextSpan(
                      text: register.phoneNumber,
                      style: primaryTextStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "UPI ID: ",
                  style:hintTextStyle.copyWith(fontSize: 13.sp),
                  children: [
                    TextSpan(
                      text: register.upiId,
                      style: primaryTextStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Registration Date: ",
                  style:hintTextStyle.copyWith(fontSize: 13.sp),
                  children: [
                    TextSpan(
                      text: DateFormat('HH:mm dd/MM').format(register.date),
                      style: primaryTextStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Registration For: ",
                  style:hintTextStyle.copyWith(fontSize: 13.sp),
                  children: [
                    TextSpan(
                      text: register.registrationFor,
                      style: primaryTextStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              ],
              ),
          GestureDetector(
            onTap:()=> showBottomSheet(context),
              child: Icon(Icons.more_vert_outlined))
        ],
      ),);
  }
}
