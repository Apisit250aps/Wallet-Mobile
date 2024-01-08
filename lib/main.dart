import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 220, 52),
          primary: const Color.fromARGB(255, 255, 220, 52),
          secondary: const Color.fromARGB(255, 34, 40, 49),
        ),

        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int balanceValue = 0;

  Widget balanceDisplay(balanceValue) => Container(
        alignment: Alignment.centerRight,
        height: 65,
        width: 175,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 34, 40, 49),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: const Text(
          "500 ฿",
          textAlign: TextAlign.end,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
        ),
      );

  Widget balance() => Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        height: 221,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 220, 52),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(children: [
          Center(
            child: Row(children: [
              balanceDisplay(balanceValue),
              balanceDisplay(balanceValue)
            ]),
          )
        ]),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          toolbarHeight: 100,
          actions: const <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications_outlined,
                color: Color.fromARGB(255, 34, 40, 49),
                size: 32,
              ),
            )
          ],
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Color.fromARGB(255, 34, 40, 49),
            ),
            onTap: () => {},
          ),
          bottom: null),
      body: Column(
        children: [
          balance(),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
