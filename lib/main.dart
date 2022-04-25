import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main()=> runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dialer App",
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["Bishworaj Poudel", "Bimal Sharma", "Damodar ", "Himal"];
  var phoneNumber = ["9876543210","9876543211","9876543212","9876543213"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE21717),
        // ignore: prefer_const_constructors
        title: Text("Phone Dialer App"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index){
          return ListTile(
            // ignore: prefer_const_constructors
            leading: Icon(Icons.supervised_user_circle),
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
            trailing: IconButton(
              icon: const Icon(Icons.call),
              onPressed: (){
                  launch("tel://${phoneNumber[index]}");
              },
            ),
          );
        },
      ),
    );
  }
}