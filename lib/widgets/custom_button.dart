import 'package:flutter/material.dart';
import 'package:taskui/widgets/text_widget.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Color? color;
  final Function? onTap;

  const CustomButton({
    super.key,
    this.title,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: TextWidget(
          text: title ?? '',
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
