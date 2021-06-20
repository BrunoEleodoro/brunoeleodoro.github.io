import 'package:flutter/material.dart';

import 'imagem_card.dart';

class TalksScreen extends StatefulWidget {
  @override
  _TalksScreenState createState() => _TalksScreenState();
}

class _TalksScreenState extends State<TalksScreen> {
  @override
  Widget build(BuildContext context) {
    double dimension = 400;
    return Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                    title: 'FlutterTalks 2019',
                    descricao:
                        'Dia 31 de Agosto estive no Centro Universitário Ítalo Brasileiro para palestrar sobre como integrar seu aplicativo '
                        'flutter com o admob, e também mostrei detalhes sobre o mercado de anuncios no Brasil.',
                    img: 'assets/talk-fluttertalks.jpg',
                    child: SizedBox())),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'Minicurso Unicamp 2019',
                  descricao:
                      'Dia 09 de Outubro estive na Unicamp em Limeira para ministra um minicurso sobre flutter, '
                      'utilizamos o gitpod para desenvolver o app e também expliquei a diferença do flutter'
                      ' das outras bibliotecas/frameworks do mercado (React Native, Ionic).',
                  img: 'assets/talk-unicamp.jpg',
                  child: SizedBox(),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'TechSummit Movile 2019',
                  descricao:
                      'Dia 09 de Novembro tive o prazer de participar do primeiro evento da Movile'
                      ' compartilhando tecnologia com a comunidade, dessa vez palestrei sobre o porque'
                      ' o Flutter está cada vez mais, se mostrando ser o framework do futuro para Apps Mobile.',
                  img: 'assets/talk-movile.png',
                  child: SizedBox(),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                    title:
                        'Flutter Background Geolocation apenas no Android - 2020',
                    descricao:
                        'Nessa talk falei sobre como obter a latitude e longitude do usuario mesmo se ele estiver com o seu app em flutter fechado, por enquanto só funciona em Android.',
                    img: 'assets/talk-geolocation.png',
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.purpleAccent,
                              child: Text(
                                '1º Lugar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            )),
                      ),
                    ))),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: Container()),
          ],
        ),
      ),
    );
  }
}
