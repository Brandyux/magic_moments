import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';
import 'package:animated_background/animated_background.dart';

import 'package:url_launcher/url_launcher.dart';

class LinkTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: <Widget>[
        SizedBox(
          height: 35,
        ),

        CircleAvatar(
          radius: 160 / 2,
          backgroundImage: NetworkImage(
              'https://z-p3-scontent.flpb2-1.fna.fbcdn.net/v/t1.6435-9/165846664_108491418002380_3275085709464825354_n.png?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=sYu-qojS-DsAX9bm5q0&_nc_ht=z-p3-scontent.flpb2-1.fna&oh=98b163c8d40fe1e97b1064833984e6d3&oe=60C1A15C'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          child: Text(
            '@MagicMoments',
            style: TextStyle(
                fontFamily: 'Courgette', color: Colors.black, fontSize: 18),
          ),
        ),

        SizedBox(height: 20),
        ButtonLink(
          text: 'Facebook',
        ),
        Youtube(),
        Whatsapp(),
        Whatsapp1(),

//BOTON 01

        //ButtonLink(       ),
        Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Built by KBMC',
              style: TextStyle(
                  fontFamily: 'Courgette',
                  color: Colors.lightBlue[100],
                  fontSize: 18),
              //SizedBox(width: 7),
              //Image.network('src', width: 25,),
            ),
          ],
        ),
        SizedBox(height: 23),
      ]),
    );
  }
}

class ButtonLink extends StatelessWidget {
  const ButtonLink({Key key, @required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: FlatButton(
          color: Colors.cyanAccent[400],
          padding: EdgeInsets.symmetric(vertical: 28),
          //child: Linkify(
          //onOpen: _onOpen,
          //    text: "Facebook"),
          child: Text(
            'Galeria',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Courgette', fontSize: 18),
          ),
          onPressed: () {
            launch(
                'https://www.facebook.com/Magic-Moments-108447894673399/photos');
          },
        ),
      ),
    );
  }
}

class Youtube extends StatelessWidget {
  const Youtube({Key key, @required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: FlatButton(
          color: Colors.red[300],
          padding: EdgeInsets.symmetric(vertical: 28),
          child: Text(
            'Facebook',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Courgette', fontSize: 18),
          ),
          onPressed: () {
            launch('https://www.facebook.com/Magic-Moments-108447894673399');
          },
        ),
      ),
    );
  }
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key key, @required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: FlatButton(
          color: Colors.cyanAccent[400],
          padding: EdgeInsets.symmetric(vertical: 28),
          child: Text(
            'Whatsapp Op.1',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Courgette', fontSize: 18),
          ),
          onPressed: () {
            launch('https://wa.link/z5oou2');
          },
        ),
      ),
    );
  }
}

class Whatsapp1 extends StatelessWidget {
  const Whatsapp1({Key key, @required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: FlatButton(
          color: Colors.red[300],
          padding: EdgeInsets.symmetric(vertical: 28),
          child: Text(
            'Whatsapp Op.2  \uf111',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Courgette', fontSize: 18),
          ),
          onPressed: () {
            launch('https://wa.link/0750ku');
          },
        ),
      ),
    );
  }
}
