import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Calendar'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.text_alignleft,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: const Center(
            child: Text("Calendar Screen"),
          ),
        ),
      ),
    );
  }
}
