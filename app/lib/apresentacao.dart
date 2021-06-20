import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ApresentacaoScreen extends StatefulWidget {
  @override
  _ApresentacaoScreenState createState() => _ApresentacaoScreenState();
}

class _ApresentacaoScreenState extends State<ApresentacaoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            child: Column(
              children: <Widget>[
                Container(
                  width: 500,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, -0.5),
                          image: NetworkImage(
                              'https://res.cloudinary.com/brunoeleodoro/image/upload/v1624198747/portfolio/fatec-pocket.jpg'))),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Image.asset('assets/language-flutter.png',
                            width: 30),
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Image.asset('assets/language-react.png'),
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Image.asset('assets/language-node.png'),
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Image.asset(
                          'assets/language-mongo.png',
                          width: 40,
                        ),
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Image.asset('assets/language-docker.png'),
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Olá,\n\nBruno é desenvolvedor Front-End na IBM, atualmente cursando Segurança da Informação na Fatec de Americana, criador do Fatec Pocket, aplicativo para estudantes da Fatec.Também já palestrou no primeiro evento de Flutter do Brasil sobre monetização de apps e ganhou hackathons internacionais em Web3 com desenvolvimento em Flutter.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 2),
                  child: Card(
                    child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.trophy,
                        ),
                        title: Text(
                          'Talks',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Text(
                            '4',
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 2),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.trophy,
                      ),
                      title: Text(
                        'Hackathons Internacionais (Online)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 2),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.trophy,
                      ),
                      title: Text(
                        'Hackathons Presenciais',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text(
                          '12',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 2),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.trophy,
                      ),
                      title: Text(
                        'Hackathons Virtuais',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
