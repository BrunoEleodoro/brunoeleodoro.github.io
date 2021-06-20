import 'package:app/talks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'apresentacao.dart';
import 'hackathons.dart';
import 'more.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bruno Eleodoro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.ptSans().fontFamily,
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark),
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Text('selectedIndex: $_selectedIndex'),
    );
    if (_selectedIndex == 0) {
      content = ApresentacaoScreen();
    } else if (_selectedIndex == 1) {
      content = TalksScreen();
    } else if (_selectedIndex == 2) {
      content = HackathonsScreen();
    } else if (_selectedIndex == 3) {
      content = MoreScreen();
    }

    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 60,
            child: NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.account_circle),
                  selectedIcon: Icon(Icons.account_circle),
                  label: Text('Apresentação'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.record_voice_over),
                  selectedIcon: Icon(Icons.record_voice_over),
                  label: Text('Talks'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.flight_takeoff),
                  selectedIcon: Icon(Icons.flight_takeoff),
                  label: Text('Hackathons'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.share),
                  selectedIcon: Icon(Icons.share),
                  label: Text('Mais'),
                ),
              ],
            ),
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(child: content)
        ],
      ),
    );
  }
}
