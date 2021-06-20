import 'package:flutter/material.dart';
import 'dart:html' as html;

class ImagemCard extends StatelessWidget {
  var img = '';
  Widget child;
  var title = '';
  var descricao = '';
  var link = '';

  double custom_height = 0;
  ImagemCard(
      {required this.img,
      required this.child,
      this.custom_height = 450,
      this.title = '',
      this.descricao = '',
      this.link = ''});
  @override
  Widget build(BuildContext context) {
    var mobile = false;
    if (MediaQuery.of(context).size.width < 600) {
      mobile = true;
    }
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
              isDismissible: true,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                html.window.open(img, "_blank");
                              },
                              child: Container(
                                  width: (mobile)
                                      ? MediaQuery.of(context).size.width
                                      : MediaQuery.of(context).size.width / 2,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(2)),
                                      image: DecorationImage(
                                          alignment: Alignment.center,
                                          image: AssetImage(img))))),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(title,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Container(
                                  width: (mobile)
                                      ? MediaQuery.of(context).size.width
                                      : MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    descricao,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ))),
                          SizedBox(
                            height: 10,
                          ),
                          (link.length > 0)
                              ? MaterialButton(
                                  color: Colors.purpleAccent,
                                  child: Text(
                                    'Ver mais',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    html.window.open(link, '_blank');
                                  },
                                )
                              : SizedBox()
                          //
                        ],
                      ),
                    ),
                  ),
                );
              });

          // showDialog(
          //     context: context,
          //     child: Container(
          //       height: MediaQuery.of(context).size.height / 2,
          //       child: GestureDetector(
          //           onTap: () {
          //             Navigator.pop(context);
          //           },
          //           child: Image.network(
          //             img,
          //             width: MediaQuery.of(context).size.width / 2,
          //           )),
          //     ),
          //     barrierDismissible: true);
        },
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.maxFinite,
          height: custom_height,
          child: child,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment:
                      (mobile) ? Alignment.center : Alignment.centerRight,
                  image: AssetImage(img))),
        ));
  }
}
