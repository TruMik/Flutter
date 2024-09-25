import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
            ],
          ),
          const Center(
            child: Image(
              image: ExactAssetImage('assets/logo.png')
            ),
          )
        ],
      ),
    );
  }
}