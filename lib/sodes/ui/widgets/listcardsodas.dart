import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/model/model_info_sodes.dart';
import 'package:sodes_ui/sodes/ui/widgets/structurecard.dart';


class LisCardSodas extends StatelessWidget {
  const LisCardSodas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;


    return Container(
      height: screenHeight*0.6,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: screenHeight*0.01),
        children:<Widget>[
          StructureCard(modelinfosoda: ModelInfoSode(imagePath: "assets/img/soda.jpg", name: "Apple Juice", price: "8.65"),),
          StructureCard(modelinfosoda: ModelInfoSode(imagePath: "assets/img/soda2.jpg", name: "Pinapple Juice", price: "9.40"),),
          StructureCard(modelinfosoda: ModelInfoSode(imagePath: "assets/img/soda3.jpg", name: "Grapes Juice", price: "10.50"),)
       
        ]
      ),
   
    );
  }
}