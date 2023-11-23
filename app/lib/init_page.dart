import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Store App",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.asset('assets/images/Woman Shopping.gif')
          ],
        ),
      ),
    );
  }
}
