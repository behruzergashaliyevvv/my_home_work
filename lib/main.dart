import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.arrow_back,
                    color: const Color.fromARGB(255, 163, 0, 0)),
              ),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Icon(Icons.favorite,
                      color: const Color.fromARGB(255, 163, 0, 0)),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: 60,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 194, 51, 51),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF1E5EBC).withAlpha(15),
                    offset: Offset(10, 10),
                    blurRadius: 10,
                    spreadRadius: 2.5,
                  )
                ],
              ),
              child: Center(
                child: Text('Your content here'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
