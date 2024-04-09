import 'package:assignment_flutter/pages/nextscreen.dart';
import 'package:flutter/material.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  bool isTextSelected = false;
  bool isImageSelected = false;
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Text Widget'),
            trailing: Switch(
              value: isTextSelected,
              onChanged: (value) {
                setState(() {
                  isTextSelected = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Image Widget'),
            trailing: Switch(
              value: isImageSelected,
              onChanged: (value) {
                setState(() {
                  isImageSelected = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Button Widget'),
            trailing: Switch(
              value: isButtonSelected,
              onChanged: (value) {
                setState(() {
                  isButtonSelected = value;
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NextScreen(
                    isTextSelected: isTextSelected,
                    isImageSelected: isImageSelected,
                    isButtonSelected: isButtonSelected,
                  ),
                ),
              );
            },
            child: const Text('Import widget'),
          ),
        ],
      ),
    );
  }

  void _navigateToNextScreen() {
    // Navigate to the next screen with the selected widgets
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextScreen(
          isTextSelected: isTextSelected,
          isImageSelected: isImageSelected,
          isButtonSelected: isButtonSelected,
        ),
      ),
    );
  }
}
