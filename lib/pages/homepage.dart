import 'package:assignment_flutter/pages/widgetselection.dart';
import 'package:assignment_flutter/utils/colors.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment App'),
      ),
      body: Center(
        // Centering the content horizontally and vertically
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centering the text vertically
          children: [
            const Text(
              'No widget is Added',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 300,
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          AppColors.buttonColor)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WidgetScreen();
                    }));
                  },
                  child: const Text(
                    'Add widget',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
