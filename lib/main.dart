
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scan2win/views/admin/main_admin_screen.dart';
import 'package:scan2win/views/user/lottery_register.dart';

import 'firebase_options.dart';


void main() async {
  // await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
         ScreenUtilInit(
           designSize: const Size(375, 812), // iPhone 12
           child: SizedBox(
             width: kIsWeb?600:double.infinity,
             child: MaterialApp(

              debugShowCheckedModeBanner: false,
              title: 'Pulse',
              theme: ThemeData(
                textTheme: GoogleFonts.poppinsTextTheme(),
              ),
              home: MainAdminScreen(),

                 ),
           ),
         );
  }
}
