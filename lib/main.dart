// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'Details.dart';

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

class ScrollControllerWidgetState extends State<ScrollControllerWidget>{
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Align(
          alignment: Alignment(-1.8,1.0),
          child: const Text('Flash Cards',
            style: TextStyle(fontFamily: 'PatrickHand', fontSize: 50,color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: SizedBox(),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(accountName: const Text('VIBHAV',
              style: TextStyle(fontFamily: 'PatrickHand', fontSize: 20),),
              accountEmail: const Text('srivibhavcs1213@gmail.com',
                style: TextStyle(fontFamily: 'PatrickHand', fontSize: 20),
              ),),
            new ListTile(
              title: const Text("DETAILS",
                style: TextStyle(fontFamily: 'PatrickHand',
                    fontSize: 30),
              ),
              trailing: new Icon(Icons.circle_sharp),
            ),
          ],
        ),
      ),

      body: Container(
          child: GridView.count(
          crossAxisCount: 1,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/Colour_burst.jpg"
                                ),
                                fit: BoxFit.cover
                              ),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(' Q) Why is Frenkel defect found \t in AgCl?',
                                        style: TextStyle(
                                            fontFamily: 'PatrickHand',
                                            color: Colors.blue.shade300,
                                            fontSize: 25),),),
                                  Align(
                                    alignment: Alignment(-0.8,0.25),
                                    child: Text('Ans: AgCl has a Frenkel defect because Ag+ is small enough to fit into interstitial vacant positions. As a result of the large size difference between the ions Ag+ and Cl–, Ag+ occupies voids.',
                                    style: TextStyle(fontFamily: 'PatrickHand',color: Colors.white,fontSize: 22.5,),),
                                  )
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Colour_burst.jpg"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Q) SWhat are diamagnetic substances?',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blue.shade300, fontSize: 25.0),)),
                                Align(
                                  alignment: Alignment(-0.8,-0.15),
                                  child: Text('Ans: Diamagnetic substances are those that are only weakly repelled by an external magnetic field. For example, copper, bismuth, and so on.',
                                  style: TextStyle(fontFamily: 'PatrickHand',fontSize: 22.5,color: Colors.white),),
                                )
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Colour_burst.jpg"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Q) What are point defects?',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blue.shade300, fontSize: 25.0),)),
                                Align(
                                  alignment: Alignment(-0.8,-0.45),
                                  child: Text('Ans: When the irregularity in the arrangement of constituent particles exist around a point or an atom in crystalline solid the defect is called a point defect.',
                                  style: TextStyle(fontFamily: 'PatrickHand',fontSize: 22.5,color: Colors.white),),
                                )
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Colour_burst.jpg"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Q) What are Azeotropes?",style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blue.shade300, fontSize: 25.0),)),
                                Align(
                                  alignment: Alignment(-0.8,-0.45),
                                  child: Text('Ans: Azeotropes are binary solutions (liquid mixtures) having the same composition in liquid and vapour phase and it is not possible to separate the components of an azeotrope by fractional distillation. ',
                                  style: TextStyle(fontFamily: 'PatrickHand',fontSize: 22.5,color: Colors.white),),
                                )
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Colour_burst.jpg"
                                  ),
                                  fit: BoxFit.cover
                              ),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Q) Differentiate between hypertonic and hypotonic sols.',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blue.shade300, fontSize: 25.0),)),
                                Align(
                                  alignment: Alignment(-0.8,0.6),
                                  child: Text('Ans: A hypertonic solution is one that has a higher solute concentration outside the cell than inside whereas a hypotonic solution is the one that has a higher solute concentration inside the cell than outside.',
                                  style: TextStyle(fontFamily: 'PatrickHand',fontSize: 22.5,color: Colors.white),),
                                )
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        ),
    bottomNavigationBar:  NavigationBarTheme(
        data: NavigationBarThemeData(
        indicatorColor: Colors.blue.shade100,
        labelTextStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
    ),
      child: NavigationBar(
        selectedIndex: index ,
        height: 72.5,
        onDestinationSelected: (index) =>
            setState(() => this.index = index),
        destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_rounded),
              label: 'HOME',),
            NavigationDestination(
              icon: Icon(Icons.edit),
              label: 'PRACTICE',),
            ],
        ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue.shade100,
        child: const Icon(Icons.add, color: Colors.black,size: 35,),
      ),
    );

  }
}







