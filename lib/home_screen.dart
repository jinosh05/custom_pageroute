import 'package:custom_pageroute/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Welcome to\n Home Page',
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      // Base Navigation Builder and replacement of
                      // MaterialPageRoute
                      pageBuilder: ((context, animation, secondaryAnimation) {
                        // Return the target Screen
                        return const SecondScreen();
                      }),
                    ),
                  );
                },
                child: const Text('Navigate')),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
