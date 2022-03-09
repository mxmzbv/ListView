import 'package:flutter/material.dart';
import 'users.dart';

void main() {
  runApp(const ListViewScreen());
}

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {

  ListTile _item (BuildContext context, int index){
   return ListTile (
    leading: Icon(Icons.account_box), 
    title: Text( list [ index ].Name),
    subtitle: Text ( list [ index ].Phone), 
    trailing:  Icon(Icons.call) ,
    onTap: (){},
   );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Контакты"),),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: _item,
        ),
      ),
    );
  }
}