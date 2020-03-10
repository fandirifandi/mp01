import 'package:flutter/material.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.call,
                color:Colors.blue.shade600,
              ),
              Text('Call bre'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.place,
                color: Colors.blue.shade600,
              ),
              Text('Route bre')
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.share,
                color:Colors.blue.shade600,
              ),
              Text("Share")
            ],
          )
        ],
      ),
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 20 ),
                  child: Text('testing',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50 ),
                  ),
                ),
                Text('test',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 48),
                ),
              ],
              ),
              ),
                 FavoriteWidget(),
    ],
    ),
    );
    Widget isiSection = Container (
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text('Halooooo',
          style: TextStyle(fontSize: 20),),
        ],
      )
      ,);

      
return MaterialApp(
  debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo App'),
         ),
         body:Column(
           children: <Widget> [
             Image.asset('images/1.jpg',
             width:600,
             height: 240,
             fit: BoxFit.cover,
             ),
             titleSection,
             buttonSection,
             isiSection,
           ],),
         ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {

  @override
  createState() => _FavoriteWidgetState();

}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  void _toogleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount -= 1;
        _isFavorite = false;
      } else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavorite ? Icon(Icons.star): Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toogleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text ('$_favoriteCount'),
          ),
        )
      ],
    );
  }



}

