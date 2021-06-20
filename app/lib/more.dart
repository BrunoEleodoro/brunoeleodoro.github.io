import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text('Outras Redes',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    onTap: () {
                      html.window.open(
                          'https://linkedin.com/in/brunoeleodoro/', '_blank');
                    },
                    leading: Icon(FontAwesomeIcons.linkedin),
                    title: Text('Linkedin'),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  child: ListTile(
                    onTap: () {
                      html.window
                          .open('https://github.com/BrunoEleodoro/', '_blank');
                    },
                    leading: Icon(FontAwesomeIcons.github),
                    title: Text('GitHub'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
