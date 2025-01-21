
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scan2win/views/lottery_register.dart';


void main() async {
  // await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
         MaterialApp(

          debugShowCheckedModeBanner: false,
          title: 'Pulse',
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          home: LotteryRegisterScreen(),

    );
  }
}
