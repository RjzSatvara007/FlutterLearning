import 'package:flutter/material.dart';

void main() {
  runApp(MyAppBar("My App", "Rajesh Satvara"));
}

class MyAppBar extends StatelessWidget {
  String title = "";
  String name = "";

  MyAppBar(this.title, this.name);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => print("leading clicked"),
          ),
          title: Text(title),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Alerts',
              onPressed: () => print("Alerts clicked"),
            ),
            PopupMenuButton(
                icon: const Icon(Icons.settings), // dynamic icon
                onSelected: (newValue) => print("$newValue clicked"),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Text("My Account"),
                      value: 1,
                    ),
                    const PopupMenuItem(
                      child: Text("Log-out"),
                      value: 2,
                    ),
                  ];
                })
          ],
        ),
        body: Center(
          child: Text("Welcome , $name"),
        ),
      ),
    );
  }
}
