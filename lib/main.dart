import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main(){
  runApp(MaterialApp(
    home:Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String data='';
  fetchFileData()async{
    String responseText=await rootBundle.loadString("textFiles/textDemo.txt");
    
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(data,style: TextStyle(fontSize: 30),),
        ),
      ),
    );  
  }
}