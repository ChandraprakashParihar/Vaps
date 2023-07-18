import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Message'),
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
            child: Text("Message Screen"),
          ),
        ),
      ),
    );
  }
}
