import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sodes_ui/sodes/model/model_histories.dart';

class Histories extends StatelessWidget {
  Modelhistories modelhistories;
  Histories({Key key, this.modelhistories}) : super(key: key);

  Widget customHistories(context) {
    
    return Container(
      child: Container(
        width: 70.0,
        height: 70.0,
        margin: EdgeInsets.only(right: 0.0),
        decoration: BoxDecoration(
            border: Border.all(
                color: Color(0xFF26314C),
                width: 3.0,
                style: BorderStyle.solid),
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(modelhistories.imgPath))),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
                color: Color(modelhistories.color),
                width: 1.5,
                style: BorderStyle.solid),
      ),
    );
  }

  Widget structuredHistories(context) {
    return Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              child: customHistories(context),
            ),
            Container(
                padding: EdgeInsets.only(top: 5),
                child: Center(
                    child: Text(
                  modelhistories.type,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return structuredHistories(context);
  }
}
