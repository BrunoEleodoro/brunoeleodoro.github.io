import 'package:flutter/material.dart';

import 'imagem_card.dart';

class HackathonsScreen extends StatefulWidget {
  @override
  _HackathonsScreenState createState() => _HackathonsScreenState();
}

class _HackathonsScreenState extends State<HackathonsScreen> {
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
                    title: 'Nasa Space Apps Challenge 2019',
                    descricao:
                        'Por meio de gamificação e desafios baseados em problemas ambientais reais vivenciados nas cidades, '
                        'a ferramenta promove a prática de consumo consciente, como, por exemplo, comprar produtos de '
                        'embalagens retornáveis, optar por meios de locomoção com emissão de CO2 zero e evitar o uso de '
                        'artigos descartáveis de uso único, premiando o sucesso do usuário nos desafios com pontos '
                        'que podem ser trocados por benefícios. O engajamento promove os produtos do própria empresa '
                        'e o marketing, além de trazer melhor reputação de mercado e competitividade, uma vez que '
                        'sustentabilidade não é prejuízo, mas sim investimento.',
                    img: 'assets/hack-nasa.jpg',
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
                child: ImagemCard(
                    title: 'STOP COVID-19 Consensys Health',
                    descricao:
                        'Com o projeto dPlasma, desenvolvemos um aplicativo que conecta pessoas já curadas de COVID para que elas doem plasma e também permitindo que Hematologistas façam "Request" para os bancos de sangue.\nTudo isso utilizando Blockchain e Smart Contracts da rede Ethereum',
                    img: 'assets/hack-dplasma.jpg',
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
                child: ImagemCard(
                    title: 'Mega-Hack Shawee',
                    descricao:
                        'Durante a 2 edição do MegaHack, desenvolvemos uma solução chamada "Checkpoint", onde cada passo que paciente realiza dentro do hospital é registrado em uma rede de blockchain utilizando a rede de Ethereum. Dessa forma, o doutor de cada sala dentro do hospital registra no smart contract a ação que ele realizou no paciente.',
                    img: 'assets/hack-cvlatam.jpg',
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
              child: ImagemCard(
                title: 'Blue Hack - IBM',
                descricao:
                    'Dentro do tema \'Bring your own Challenge\', decidimos desenvolver um aplicativo para ajudar a encontrar pessoas desaparecidas.'
                    ' Todos que tiverem o aplicativo instalado em seu celular e passar por uma area onde uma pessoa desapareceu, essas pessoas recebem uma notificação'
                    ' caso elas queiram ajudar na busca dessa pessoa ou se virem ela para avisar os familiares.',
                img: 'assets/hack-ibm.jpg',
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
                            '3º Lugar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        )),
                  ),
                ),
              ),
            ),
            Container(
              width: dimension,
              height: dimension,
              margin: EdgeInsets.all(8),
              child: ImagemCard(
                title: 'Sherlock Hack for Good Shawee',
                descricao:
                    'Durante essa maratona, o foco era desenvolver uma solução de prevenção as fake news, e o grande diferencial de nosso projeto foi a utilização das APIS da Twillio e do Watson para obter informações falsas vindas em áudios do whatsapp.',
                img: 'assets/hack-sherlock.png',
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
                            '5º Lugar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        )),
                  ),
                ),
              ),
            ),
            Container(
              width: dimension,
              height: dimension,
              margin: EdgeInsets.all(8),
              child: ImagemCard(
                title: 'Hackathon IMA',
                descricao:
                    'Neste hackathon foi desenvolvido uma plataforma que permitia a gravação de aúdios descritivos sobre pinturas'
                    ' e ai ser disponibilizado para os estudantes com deficiência visual.',
                img: 'assets/hack-ima.jpg',
                child: SizedBox(),
              ),
            ),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'MegaHack Campinas',
                  descricao:
                      'Neste hackathon foi desenvolvido uma plataforma que facilitava o acesso a informação sobre os gastos públicos, através de gráficos.',
                  img: 'assets/hack-campinas.jpg',
                  child: SizedBox(),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'Hack in Santos',
                  descricao:
                      'O tema deste hackathon era o combate a corrupção, foi onde criamos uma plataforma onde a população tinha acesso de uma maneira mais fácil'
                      ' acesso os gastos públicos através de gráficos, também criamos um menu onde era possível visualizar as propostas de vereadores e votar nelas.',
                  img: 'assets/hack-santos.jpg',
                  child: SizedBox(),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'Hack in Sampa',
                  descricao:
                      'Neste hackathon, desenvolvemos uma plataforma onde a prefeitura no momento do cadastro das notas fiscais dos vereadores, o sistema fazia uma validação'
                      ' verificando se aquele vereador estava gastando acima da média o que poderia ser um indício de mal uso do dinheiro público.',
                  link:
                      'https://www.facebook.com/hackinsampa/videos/2102850139962492/?t=2684',
                  img: 'assets/hack-in-sampa2.jpeg',
                  child: SizedBox(),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'Call for Code - 2018',
                  descricao:
                      'Neste hackathon desenvolvemos um aplicativo que permitia as pessoas avisarem sobre desastres naturais que estariam acontecendo'
                      ' e ai, as pessoas próximas a ela recebiam uma notificação também, avisando sobre o risco que esta por vir.',
                  img: 'assets/hack-callforcode.jpg',
                  child: SizedBox(),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'Hack in Sampa 3 - Transporte público',
                  descricao:
                      'Nesta maratona desenvolvemos uma solução para as fraudes no transporte p��blico na cidade de São Paulo,'
                      ' através de blockchain, cada bilhete único teria sua validação feita por esse sistema de criptografia garantindo que'
                      ' aquele bilhete não foi fraudado, e também desenvolvemos um aplicativo para que a pessoa possa transferir o saldo do cartão'
                      ' dela para outra pessoa, sem precisar emprestar o bilhete único e causar uma possivel fraude no sistema.',
                  img: 'assets/hack-in-sampa3.jpg',
                  child: SizedBox(),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                    title: 'Hackathon Synvia',
                    descricao:
                        ' Nesta maratona, criamos uma plataforma chamada \'plante.me\', que tinha como principal objetivo'
                        ' tornar o cuidado das plantas digital, onde o aplicativo iria lembrar os usuários quando regar a planta, quando adubar e diversas informações sobre a planta.'
                        ' Tinhamos como foco principal o lar de idosos, mas poderiamos expandir isso para floriculturas e consumidores no geral.',
                    img: 'assets/hack-synvia.jpg',
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
                                '4º Lugar',
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
                child: ImagemCard(
                  title: 'Call For Code - 2019',
                  descricao:
                      'Neste ano, decidimos focar na saúde mental das pessoas, essa maratona era apenas a apresentação da ideia.'
                      ' A ideia era que qualquer pessoa do mundo pudesse ajudar outras pessoas que passaram por desastres naturais,'
                      ' Através do Watson Personality Insights e do Watson Translate, conseguiriamos fornecer informações das pessoas'
                      ' conforme ela fosse dialogando, dessa forma conseguimos ajudar mais efetivamente a pessoa sabendo de seus sentimentos.',
                  img: 'assets/hack-callforcode2.jpeg',
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
                              '6º Lugar do Brasil',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                )),
            Container(
                width: dimension,
                height: dimension,
                margin: EdgeInsets.all(8),
                child: ImagemCard(
                  title: 'Flutter Hackathon',
                  descricao:
                      'Desenvolvemos um aplicativo que permitia as pessoas cadastrarem hub\'s de flutter, dessa forma quem tem interesse pelo framework'
                      ' consegue encontrar esses centros de estudo sobre flutter mais próximo de sua localização.',
                  img: 'assets/hack-flutter.jpg',
                  child: SizedBox(),
                )),
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
