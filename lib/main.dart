import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.black, shape: CircularNotchedRectangle()),
        textButtonTheme: TextButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF78B59F)))),
        iconTheme: IconThemeData(color: Color(0xFF78B59F))
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(25.0, 77.0, 25.0, 0.0),
                  child: Text("Hi <insert name>! How may we assist you today?"),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(13.0, 23.0, 13.0, 0.0),
                alignment: Alignment.center,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      TextButton(onPressed: () {  }, child: ListTile(title: Text("Book an online consultation"), subtitle: Text(""),)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(13.0, 23.0, 13.0, 0.0),
                alignment: Alignment.center,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      TextButton(onPressed: () {  }, child: ListTile(title: Text("View medical records"), subtitle: Text("Last record:"),)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(13.0, 23.0, 13.0, 0.0),
                alignment: Alignment.center,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      TextButton(onPressed: () {  }, child: ListTile(title: Text("Self Check-Up"), subtitle: Text("Check medical parameters through MedGrab"),)),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Card(),
                  Card(),
                  Card(),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.home), tooltip: "Home Page"),
              IconButton(onPressed: () {}, icon: const Icon(Icons.forum), tooltip: "Chat"),
              IconButton(onPressed: () {}, icon: const Icon(Icons.feedback), tooltip: "Feedback"),
              IconButton(onPressed: () {}, icon: const Icon(Icons.person), tooltip: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
