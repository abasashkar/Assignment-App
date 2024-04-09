import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  final bool isTextSelected;
  final bool isImageSelected;
  final bool isButtonSelected;

  const NextScreen({
    Key? key,
    required this.isTextSelected,
    required this.isImageSelected,
    required this.isButtonSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isTextSelected)
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 213, 209, 209),
                  labelText: 'Enter Text',
                  border: OutlineInputBorder(),
                ),
              ),
            if (isImageSelected)
              Image.network(
                  'https://res.cloudinary.com/practicaldev/image/fetch/s--_HBZhuhF--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/nweeqf97l2md3tlqkjyt.jpg'),
            if (isButtonSelected)
              ElevatedButton(
                onPressed: () {
                  // Your button logic goes here
                },
                child: const Text('Submit Button'),
              ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
