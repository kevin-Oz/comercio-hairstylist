import 'package:flutter/material.dart';

class BarberPage extends StatefulWidget {
  const BarberPage({Key key}) : super(key: key);

  @override
  _BarberPageState createState() => _BarberPageState();
}

class _BarberPageState extends State<BarberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barbers'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          // _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            title: Text('Description'),
            subtitle: Text('We are a big team ....'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
          ),
          /* Row(
            children: [
              FlatButton(onPressed: () {}, child: Text("cancelar")),
              FlatButton(onPressed: () {}, child: Text("ok"))
            ],
          )
           */
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final urlImage =
        "https://res.cloudinary.com/idemo/image/upload/c_fill,h_247,w_370/friends.jpg";
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage(urlImage),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Team Job"),
          )
        ],
      ),
    );

    return Container(
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          // shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
