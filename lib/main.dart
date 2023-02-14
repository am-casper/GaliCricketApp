import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
Widget field(String str){
  return Container(              
              child : Padding(
              padding: EdgeInsets.fromLTRB(5,5,5,5),
              child:Text(str, style: TextStyle(fontSize:25),),),);
}
Widget data(String str){
  return Container(
              height:35,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(),
                color:Colors.white,
              ),              
              child : Padding(
              padding: EdgeInsets.fromLTRB(5,5,5,5),
              child:Text(str, style: TextStyle(fontSize:25),textAlign: TextAlign.center,),),);
}
Column fields(){
  return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            field("Runs"),
              SizedBox(height: 10),
            field("Widgets"),
              SizedBox(height: 10),
            field("Sixes"),
              SizedBox(height: 10),
            field("Fours"),
              SizedBox(height: 10),
          ],
        );
}
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
      children: <Widget>[        
        fields(),
        Column(
          children:<Widget>[            
            data("67"),
              SizedBox(height: 10),
            data("3"),
              SizedBox(height: 10),
            data("1"),
              SizedBox(height: 10),
            data("5"),
              SizedBox(height: 10),],),
          ],
        ),],),
  );    
  final right  =  Container(
    child:  Column(
    children:<Widget>[Text("Team B", style: TextStyle(fontSize:35),),
    Row(      
      children: <Widget>[        
        fields(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:<Widget>[            
            data("68"),
              SizedBox(height: 10),
            data("3"),
              SizedBox(height: 10),
            data("3"),
              SizedBox(height: 10),
            data("3"),
              SizedBox(height: 10),],),
          ],
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        leading: Image.asset(
        "assets/iconofapp.png"),
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
           Container(
            width:350,         
        child:  Align(
      alignment: Alignment.topCenter,              
        child: Container(
         decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),color: Colors.grey[100],
  ),      
        height: 250,
        width:350,
        child:Padding(
          padding: EdgeInsets.fromLTRB(10,10,10,10),
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
      ),),),
      Container(
        margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),child:Text("Team B won the game by 3 Wickets!", style: TextStyle(fontSize:40),textAlign: TextAlign.center),),
      Container( 
        margin: const EdgeInsets.fromLTRB(70, 0, 70, 0),
        child: Image.asset("assets/trophy.png"),),
      Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: ElevatedButton(
          style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.black),
      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(20,20,20,20)),
      shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(width: 3, color: Colors.black),
      ),
    ),
    ),    
        child: Text('     Back to Home Page     ',        
        style: TextStyle(fontSize:30),),
              onPressed: () {
              },
      ),),
      ],),),
      ),     
    );
  }
}
