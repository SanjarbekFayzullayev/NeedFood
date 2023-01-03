import 'package:flutter/material.dart';
class PagesTu extends StatefulWidget {
  const PagesTu({Key? key}) : super(key: key);

  @override
  State<PagesTu> createState() => _PagesTuState();
}

class _PagesTuState extends State<PagesTu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 12,
        backgroundColor: Colors.white,
        title: const Text("Myapp"),
        surfaceTintColor: Colors.orangeAccent,
      ),
      body: Container(

        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/rowbanner.png"))),

        ),
    );
  }
}
