import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar by GetX"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            );
          },
          child: const Text('Change Theme'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.snackbar("Hello snackbar", "Snackbar by getX",
          //     backgroundColor: Colors.blue, snackPosition: SnackPosition.TOP);
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
