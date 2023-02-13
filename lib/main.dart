
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gali Cricket',
      theme: ThemeData(
        
      ),
      home: const MyHomePage(title: 'GaliCricket'),
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
  
  
  final left  =  Container(
    child:  Column(
    children:<Widget>[Text("Team A", style: TextStyle(fontSize:35),),
    Row(
      // mainAxisAlignment: MainAxisAlignment.left,
      children: <Widget>[
        
        Column(
          
          children:<Widget>[
            Text("Runs:", style: TextStyle(fontSize:30),),Text("Wickets:", style: TextStyle(fontSize:30),),Text("Sixes:", style: TextStyle(fontSize:30),),Text("Fours:", style: TextStyle(fontSize:30),),
          ],
        ),
        Column(
          children:<Widget>[
            Text("67", style: TextStyle(fontSize:30),),Text("3", style: TextStyle(fontSize:30),),Text("1", style: TextStyle(fontSize:30),),Text("5", style: TextStyle(fontSize:30),),
          ],
        ),
      ],
    ),],),
  );
    
  final right  =  Container(
    child:  Column(
    children:<Widget>[Text("Team B", style: TextStyle(fontSize:35),),
    Row(
      
      children: <Widget>[
        
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget>[
            Text("Runs:", style: TextStyle(fontSize:30),),Text("Wickets:", style: TextStyle(fontSize:30),),Text("Sixes:", style: TextStyle(fontSize:30),),Text("Fours:", style: TextStyle(fontSize:30),),
          ],
        ),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Text("68", style: TextStyle(fontSize:30),),Text("3", style: TextStyle(fontSize:30),),Text("3", style: TextStyle(fontSize:30),),Text("3", style: TextStyle(fontSize:30),),
          ],
        ),
      ],
    ),],),
  );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        leading: SvgPicture.asset(
        "assets/iconofapp.svg"),
        backgroundColor: Colors.transparent,
        elevation: 0,


     
        
        title: Text(widget.title, style: TextStyle(
              color: Colors.black,),),
        

      ),
      body:  Container(
        child:Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Card(
        child:  Align(
      alignment: Alignment.topCenter,
      
        
        child: Container(
          color: Colors.blueGrey[50],
        height: 170,
        width:300,

        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            left,
            Container( 
              child: SvgPicture.asset("assets/dotted.svg"),),
            right,
          ],
        ),

        ),
      ),),
      Container(
        margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),child:Text("Team B won the game by 3 Wickets!", style: TextStyle(fontSize:40),textAlign: TextAlign.center),),
      Container( 
        margin: const EdgeInsets.fromLTRB(70, 0, 70, 0),
        child: Image.asset("assets/trophy.png"),),
      Container(
        margin: const EdgeInsets.fromLTRB(70, 0, 70, 0),
        child: ElevatedButton(
          style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.black),
      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(20,20,20,20)),
    ),
        child: Text('Back to Home Page',
        
        style: TextStyle(fontSize:30),),
              onPressed: () {
              },
      ),),
      ],),),
      ),
     
    );
  }
}
