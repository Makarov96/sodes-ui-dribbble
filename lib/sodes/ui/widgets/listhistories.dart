import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/model/model_histories.dart';
import 'package:sodes_ui/sodes/ui/widgets/histories.dart';

class ListHistories extends StatelessWidget {
  const ListHistories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:15.0),
      height: 120.0,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Histories(
              modelhistories: Modelhistories(
                  imgPath:
                      "https://static.vecteezy.com/system/resources/thumbnails/000/211/024/small/Avocado-01.jpg",
                  type: "Avocado",
                  color: 0xFF30AA44)),
          Histories(
              modelhistories: Modelhistories(
                  imgPath:
                      "https://image.freepik.com/vector-gratis/mano-dibuja-ilustracion-fruta-mango_53876-2986.jpg",
                  type: "Mango",
                  color: 0xFFFED017)),
          Histories(
              modelhistories: Modelhistories(
                  imgPath:
                      "https://cdn1.vectorstock.com/i/1000x1000/06/95/bunch-of-grapes-vector-4930695.jpg",
                  type: "grapes",
                  color: 0xFF6A2689)),
          Histories(
              modelhistories: Modelhistories(
                  imgPath:
                      "https://cdn4.vectorstock.com/i/1000x1000/13/13/apple-red-apple-fruit-icon-vector-23231313.jpg",
                  type: "Apple's",
                  color: 0xFFFF4016)),
          Histories(
              modelhistories: Modelhistories(
                  imgPath:
                      "https://static.vecteezy.com/system/resources/thumbnails/000/211/024/small/Avocado-01.jpg",
                  type: "Avocado",
                  color: 0xFF30AA44)),
        ],
      ),
    );
  }
}
