import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child: _itemButton("Lorem ipsum", "Test")),
      ),
    );
  }
}

Padding _itemButton(String text1, String text2) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
    child: InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
          ),
          const SizedBox(width: 100),
          Text(
            text2,
            style: const TextStyle(fontSize: 12),
          ),
          const Icon(Icons.arrow_right_rounded)
        ],
      ),
    ),
  );
}
