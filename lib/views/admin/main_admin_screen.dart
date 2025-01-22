import 'package:flutter/material.dart';
import 'package:scan2win/model/register.dart';
import 'package:scan2win/views/widgets/single_registration_tile.dart';

import '../../core/services/firebase_services.dart';

class MainAdminScreen extends StatefulWidget {
  const MainAdminScreen({super.key});

  @override
  State<MainAdminScreen> createState() => _MainAdminScreenState();
}

class _MainAdminScreenState extends State<MainAdminScreen> {


  List<Register> registeredUsers=[];

  Future<void> _getRegisteredUsers() async {
    registeredUsers=await FirebaseServices().getRegisterData("lottery");
    setState(() {
      registeredUsers=registeredUsers;
    });
    print(registeredUsers);
  }

  @override
  void initState() {
    _getRegisteredUsers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Admin Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: registeredUsers.length,
          itemBuilder: (context, index) {
            final registration=registeredUsers[index];
            return SingleRegistrationTile(register: registration,);
          },


        ),
      )
    );
  }
}
