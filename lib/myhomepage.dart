import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpodproject/outline_text_field.dart';

import 'myhomepage_view_model.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final homeViewFutureProvider = ref.watch(homeViewModelProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
            child: Column(
          children: [
            TextButton(
              onPressed: () {
                homeViewFutureProvider.onFirstpageButtonNavClicked();
              },
              child: const Text(
                "Go Second",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Text("Name"),
            const OutlineTextField(
                placeHolder: "Enter Name", obscureText: false),
            TextButton(
              onPressed: () {
                // homeViewFutureProvider.onFirstpageButtonNavClicked();
              },
              child: const Text(
                "submit",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
