import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Montes Flutter',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Montes AppBar'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        leading: const Icon(Icons.earbuds),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.safety_check_sharp),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.account_balance_sharp,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.purpleAccent,
      ),
      body: const Center(
        child: Text(
          'Hola, Gabriel Montes con AppBar!',
        ),
      ),
    );
  }
}
