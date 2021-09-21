import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> names = [
    'Liam',
    'Noah',
    'Oliver',
    'William',
    'Elijah',
    'James',
    'Benjamin',
    'Lucas',
    'Mason',
    'Ethan',
    'Alexander'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Daftar Pemain Sepak Bola"),
        ),
        body: ListView(children: [
          for (int i = 0; i < names.length; i++)
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Row(children: [
                  CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_UY209_CR5,0,140,209_AL_.jpg"),
                      backgroundColor: Colors.transparent),
                  Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 100,
                          height: 120,
                          color: Colors.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(names[i]),
                                Text("Negara Asal"),
                                Text("Klub"),
                                Row(
                                  children: [
                                    for (int i = 0; i < 4; i++)
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      )
                                  ],
                                )
                              ])))
                ]))
        ]));
  }
}
