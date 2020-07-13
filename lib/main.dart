import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card-contatos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}
/*
final DividerCards2 = Divider(
    color: Colors.indigoAccent,
    height: 40,
    thickness: 2,
    indent: 40,
    endIndent: 40,);
*/
final DividerCards = Divider(
  color: Colors.white70,
  height: 20,
  );

final textStyleCard =
    TextStyle(color: Colors.black54, fontWeight: FontWeight.bold);

class _CardPageState extends State<CardPage> {
  var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.teal,
              size: 28.0,
            ),
            title: Text(
              "John Bueno Dev",
              style: textStyleCard,
            ),
            subtitle: Text("Desenvolvedor Mobile/IOT"),
          ),
          Divider(
            color: Colors.indigoAccent,
            indent: 12.0,
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.teal,
              size: 28.0,
            ),
            title: Text(
              "johnbuenodev@gmail.com",
              style: textStyleCard,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.teal,
              size: 28.0,
            ),
            title: Text(
              "+55 (18) 99722-0406",
              style: textStyleCard,
            ),
          ),
        ],
      ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card Contatos",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(

       color: Colors.white70,
        child: Padding(
          padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
          child: Center(
            child: ListView(
              children: <Widget>[
                DividerCards,
                card,
                DividerCards,
                card,
                DividerCards,
                card,
                DividerCards,
                card,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
