import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page')
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo3()
        ],
      ),
    );
  }

  Widget _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.save , color: Colors.blue,),
            title: Text('Soy el titulo de esta tarjeta') ,
            subtitle: Text('Esta es el subtitulo de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){
                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){
                }
              )
            ]
          )
        ]
      ),
    );
  }

  Widget _cardTipo2(){
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Texto de cuerpo de imagen')
          )
        ],
      ),
    );
  }

  Widget _cardTipo3(){

    return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(top: 5.0, bottom: 0.0, left: 5.0, right: 5.0) ,
            leading: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
              backgroundColor: Colors.transparent,
            ),
            trailing: Icon(Icons.more_vert, color: Colors.blue),
            title: Text('Luis Cantillo'),
            subtitle: Text('Barranquilla, Atlántico, Colombia', style: TextStyle(fontSize: 10.0)),
          ),
          FadeInImage(
            image: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
                onPressed: (){
                },
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: (){
                }
              )
            ]
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 0.0, bottom: 20.0, left: 20.0),
            child: Text('Probando tarjetas y su contenido'),
          ),
        ],
      ),
    );
  }
}