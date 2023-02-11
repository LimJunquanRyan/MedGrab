import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:medgrab/components/bottomAppBar.dart';
import 'package:medgrab/pages/main.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09),
              child: Text("Hi <insert name>! How may we assist you today?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.935,
              height: MediaQuery.of(context).size.height * 0.16,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Expanded(child: TextButton(onPressed: () { Navigator.of(context).pushNamed(base.MAPSPAGE); }, child: ListTile(title: Text("Book an online consultation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), subtitle: Text("")),))
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.62,
              decoration: BoxDecoration(
                color: const Color(0xFFDED5D5),
                borderRadius: BorderRadius.vertical(top: Radius.circular(MediaQuery.of(context).size.width * 0.077), bottom: Radius.zero)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.935,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width * 0.025)),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width * 0.025))),
                      child: Column(
                        children: <Widget>[
                          Expanded(child: TextButton(onPressed: () { Navigator.pushNamed(context, base.PASTMEDPAGE); }, child: ListTile(title: Text("View medical records", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), subtitle: Text("Last record:", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),),))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.935,
                    height: MediaQuery.of(context).size.height * 0.16,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Expanded(child: TextButton(onPressed: () { Navigator.pushNamed(context, base.LIVEREADING); }, child: ListTile(title: Text("Self Check-Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), subtitle: Text("Check medical parameters through MedGrab", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),)))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.183,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.height * 0.183,
                              height: MediaQuery.of(context).size.height * 0.183,
                              child: Card(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(child: Text("Heart Rate"),)
                                  ],
                                ),
                              )
                          ),
                          Container(
                              width: MediaQuery.of(context).size.height * 0.183,
                              height: MediaQuery.of(context).size.height * 0.183,
                              child: Card(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(child: Text("Activity"),)
                                  ],
                                ),
                              )
                          ),
                          Container(
                              width: MediaQuery.of(context).size.height * 0.183,
                              height: MediaQuery.of(context).size.height * 0.183,
                              child: Card(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(child: Text("Health"),)
                                  ],
                                ),
                              )
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
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}
