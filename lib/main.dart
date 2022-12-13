// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'Practice.dart';

void main() {
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrollControllerWidget()));
}

class ScrollControllerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScrollControllerWidgetState();
  }
}

class Addcontainer extends StatelessWidget {
  Addcontainer ({
    Key? key,

  }) : super(key: key);

  TextEditingController _textController1 = TextEditingController();
  TextEditingController _textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController1,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Write your Question : ',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: _textController2,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Write the Answer : ',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var _ques = _textController1.text;
                var _ans = _textController2.text;

                print("Q) " + _ques);
                print("Ans: " + _ans);

                MYContainer(labelText1: _textController1.text, labelText2: _textController2.text,);
              },
              child: Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}



class ScrollControllerWidgetState extends State<ScrollControllerWidget> {
  int index = 0;

  final screens = [
    PracticeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.black,),
            ),
            title: Text('Discover'),
            actions: [
              IconButton(onPressed: () {},
                  icon: Icon(Icons.more_vert, color: Colors.black,))
            ],
          ),
          SliverToBoxAdapter(
            child: Wrap(
              children: [
                Lcontainer(
                  labelText: 'Meanings : ',
                ),
                Container(
                  height: 200,
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MYContainer(
                          labelText1: ' Q1) Meaning of \n Garrulous : ',
                          labelText2: ' Ans: Excessively \n talkative.',
                        ),
                        MYContainer(
                          labelText1: ' Q2) Meaning of \n Hieroglyphics : ',
                          labelText2: ' Ans: Enigmatic \n symbols.',
                        ),
                        MYContainer(
                          labelText1: ' Q3) Meaning of \n Incongruous : ',
                          labelText2: ' Ans: Strange and \n out of place.',
                        ),
                        MYContainer(
                          labelText1: ' Q4) Meaning of \n Grapple : ',
                          labelText2: ' \n \n Ans: Engage in a \n close fight or \n struggle without \n weapons.',
                        ),
                        MYContainer(
                          labelText1: ' Q5) Meaning of \n Dislodge : ',
                          labelText2: ' \n Ans: Knock or \n force out of \n position..',
                        ),
                      ],
                    ),
                  ),
                ),
                Lcontainer(
                  labelText: 'Antonyms :',
                ),
                Container(
                  height: 200,
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MYContainer(
                          labelText1: ' Q1) Opposite \n meaning of \n acquiescent :',
                          labelText2: ' \n Ans: Recalcitrant.',
                        ),
                        MYContainer(
                          labelText1: ' Q2) Opposite \n meaning of \n rudimentary :',
                          labelText2: ' \n Ans: Advanced.',
                        ),
                        MYContainer(
                          labelText1: ' Q3) Opposite \n meaning of \n alleviate :',
                          labelText2: ' \n Ans: Aggravate.',
                        ),
                        MYContainer(
                          labelText1: ' Q4) Opposite \n meaning of \n bewitch :',
                          labelText2: ' \n Ans: Repel.',
                        ),
                        MYContainer(
                          labelText1: ' Q5) Opposite \n meaning of \n befogged :',
                          labelText2: ' \n Ans: Limpid.',
                        ),
                      ],
                    ),
                  ),
                ),
                Lcontainer(
                  labelText: 'General Knowledge',
                ),
                Container(
                  height: 200,
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MYContainer(
                          labelText1: ' Q1) The first Tamil \n Sangam was held \n in ___ :',
                          labelText2: '\nAns: Madurai.',
                        ),
                        MYContainer(
                          labelText1: ' Q2) The capital of \n the chola dynasty \n was ___ :',
                          labelText2: '\nAns: Uraiyaur.',
                        ),
                        MYContainer(
                          labelText1: ' Q3) The Official \n language of \n Nagaland is ___ :',
                          labelText2: '\nAns: English.',
                        ),
                        MYContainer(
                          labelText1: ' Q4) The first \n English newspaper \n of Bihar was ___ :',
                          labelText2: '\n\n Ans: The Bihar \n Herald.',
                        ),
                        MYContainer(
                          labelText1: ' Q5) The founder of \n Bijapur state was \n ___ :',
                          labelText2: '\n\n Ans: Yusuf Adil \n Shah.',
                        ),
                      ],
                    ),
                  ),
                ),
                Lcontainer(
                  labelText: 'Added by you : ',
                ),
                Container(
                  height: 200,
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MYContainer(
                          labelText1: ' N1) The Uri Dam is \n located on which \n river in (J&K)? ',
                          labelText2: ' \n Ans: Jhelum River.',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ), onPressed: () {
        Navigator.push(context, createAlertDialog(context));
      },
        child: Icon(Icons.add,color: Colors.blue.shade300,),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500)
          ),
        ),
        child: NavigationBar(
          selectedIndex: index,
          height: 72.5,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: Duration(milliseconds: 1000),
          onDestinationSelected: (index) =>
              setState(() => this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_rounded), label: 'HOME',),
            NavigationDestination(icon: Icon(Icons.edit), label: 'PRACTICE',)
          ],
        ),
      ),
    );
  }
  createAlertDialog(BuildContext context) {
    TextEditingController customController = new TextEditingController();

    return showDialog(context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("What's in your mind?"),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Type the Answer'),
                  onPressed: () {
                    Navigator.push(context, createAlertDialogone(context));
                  }
              ),
            ],
          );
        });
  }
  createAlertDialogone(BuildContext context) {
    TextEditingController customControllerone = new TextEditingController();

    return showDialog(context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Type the answer : "),
            content: TextField(
              controller: customControllerone,
            ),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Submit'),
                  onPressed: () {
                    Navigator.defaultRouteName;
                  }
              ),
            ],
          );
        });
  }
}
class MYContainer extends StatelessWidget {
  const MYContainer ({
    Key? key,
    required this.labelText1,
    required this.labelText2,
  }) : super(key: key);

  final String labelText1;
  final String labelText2;

  @override
  Widget build( BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 175,
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
              Align(
                alignment: Alignment(-0.8,0.0),
                child: Container(
                  child: Text(labelText2,
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
class Lcontainer extends StatelessWidget {
  const Lcontainer ({
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


