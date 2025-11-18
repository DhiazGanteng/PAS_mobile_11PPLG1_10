import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_10/controller/auth_controller.dart';


class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    final user = controller.user;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Saya"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: user?.photoURL != null
                  ? NetworkImage(user!.photoURL!)
                  : const AssetImage("assets/profile.jpg") as ImageProvider,
            ),
            const SizedBox(height: 16),
            Text(
              user?.displayName ?? "Tidak ada nama",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              user?.email ?? "Tidak ada email",
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
           
          ],
        ),
      ),
    );
  }
}