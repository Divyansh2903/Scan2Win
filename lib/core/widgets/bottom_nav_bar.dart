import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      elevation: 5.0,
      items: [
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/home.png'),
            height: 20.h,
            width: 20.w,
            fit: BoxFit.contain,
            color: widget.currentIndex == 0 ? Colors.black : Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/trips.png'),
            height: 20.h,
            width: 20.w,
            fit: BoxFit.contain,
            color: widget.currentIndex == 1 ? Colors.black : Colors.grey,
          ),
          label: 'My Trips',
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/premium.png'),
            height: 20.h,
            width: 20.w,
            fit: BoxFit.contain,
            color: widget.currentIndex == 2 ? Colors.black : Colors.grey,
          ),
          label: 'Premium',
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/blogs.png'),
            height: 20.h,
            width: 20.w,
            fit: BoxFit.contain,
            color: widget.currentIndex == 3 ? Colors.black : Colors.grey,
          ),
          label: 'Blog',
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/profile.png'),
            height: 20.h,
            width: 20.w,
            fit: BoxFit.contain,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
