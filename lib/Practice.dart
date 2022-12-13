import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: Container(
        height: 200,
        child: Container(
        child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MYContainer1(labelText1: 'Question',)
        ],
        ),
        ),
      ),
    );
    }
}
class MYContainer1 extends StatelessWidget {
  const MYContainer1 ({
    Key? key,
    required this.labelText1,

  }) : super(key: key);

  final String labelText1;


  @override
  Widget build( BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 250,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.blue.shade100,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-0.8,-0.875),
                child: Container(
                  child: Text(labelText1,
                    style: TextStyle(fontSize: 17.5),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lcontainer1 extends StatelessWidget {
  const Lcontainer1 ({
    Key? key, required this.labelText
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Align(
          alignment: Alignment(-0.870,0.5),
          child: Text( labelText, style: TextStyle(fontSize: 20),)),
    );
  }
}

