import 'package:flutter/material.dart';
import 'package:taskui/view/my_home_page.dart';
import 'package:taskui/widgets/profile_widget.dart';
import 'package:taskui/widgets/text_widget.dart';
import '../../widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF549dff),
        child: Column(
          children: [
            const ProfileWidget(),
            const SizedBox(
              height: 50,
            ),
            const TextWidget(
              text: 'Paying',
              color: Colors.white,
              fontSize: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(
              text: 'Marcus  Cabatappi',
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              title: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
