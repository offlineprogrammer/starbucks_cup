import 'package:flutter/material.dart';

import 'enums.dart';
import 'select_size_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StarbucksSize starbukcsSize = StarbucksSize.small;

  void _changeSize(StarbucksSize newSize) {
    setState(() {
      starbukcsSize = newSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Select coffee size',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SelectSizeButton(
                text: 'L',
                backgroundColor: starbukcsSize == StarbucksSize.large
                    ? Colors.green
                    : Colors.black.withOpacity(0.1),
                onStarbucksSizeChanged: () => _changeSize(StarbucksSize.large),
              ),
              SelectSizeButton(
                text: 'M',
                backgroundColor: starbukcsSize == StarbucksSize.medium
                    ? Colors.green
                    : Colors.black.withOpacity(0.1),
                onStarbucksSizeChanged: () => _changeSize(StarbucksSize.medium),
              ),
              SelectSizeButton(
                text: 'S',
                backgroundColor: starbukcsSize == StarbucksSize.small
                    ? Colors.green
                    : Colors.black.withOpacity(0.1),
                onStarbucksSizeChanged: () => _changeSize(StarbucksSize.small),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          AnimatedContainer(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            height: starbukcsSize == StarbucksSize.small
                ? 150
                : starbukcsSize == StarbucksSize.medium
                    ? 250
                    : 350,
            duration: const Duration(milliseconds: 300),
            child: Image.asset(
              'images/starbuckscup.png',
            ),
          ),
        ],
      ),
    );
  }
}
