import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: Text('Details',style: TextStyle(fontFamily: 'PatrickHand', fontSize: 50,),),
          centerTitle: true,
          backgroundColor: Colors.black45,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: SizedBox(),
          ),
        ),
        body: Stack(
          children: [
            Image.asset("assets/images/Colour_burstone.jpg"),
            Align(
              alignment: Alignment(0.6,-0.95),
                child: Text("GOOD \n JOB!!",style: TextStyle(fontFamily: 'PatrickHand',fontSize: 40, color: Colors.white),)),
            Align(
                alignment: Alignment(-0.9,-0.975),
                child: CircularPercentIndicator(radius: 160,
                  lineWidth: 17, percent: 0.64, animation: true, animationDuration: 850,
                  center: new Text("64%",
                      style: TextStyle(fontFamily: 'PatrickHand', color: Colors.white, fontSize: 30)),
                  progressColor: Colors.indigo,)
            ),
            Align(
              alignment: Alignment(-1.2,0.3),
              child: Table(
                children: [
                  buildRow(['Date','Marks(/100)','Progress']),
                  buildRow(['20/10/22','98','+28%']),
                  buildRow(['19/10/22','70','6%']),
                  buildRow(['18/10/22','64','+6%']),
                  buildRow(['17/10/22','58','+13%']),
                  buildRow(['16/10/22','45','+7%']),
                  buildRow(['15/10/22','38','+1%']),
                  buildRow(['14/10/22','35','+3%']),
                ],
              ),
            )
          ],
        )

    );


  }
  TableRow buildRow(List<String> cells) => TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell, style: TextStyle(fontFamily: 'PatrickHand', color: Colors.white, fontSize: 17.5),)),);
      }
      ).toList()
  );
}

