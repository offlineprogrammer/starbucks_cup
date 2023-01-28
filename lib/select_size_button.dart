import 'package:flutter/material.dart';

class SelectSizeButton extends StatelessWidget {
  const SelectSizeButton({
    required this.onStarbucksSizeChanged,
    required this.backgroundColor,
    required this.text,
    super.key,
  });

  final VoidCallback onStarbucksSizeChanged;
  final Color backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onStarbucksSizeChanged(),
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(24),
        backgroundColor: backgroundColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
