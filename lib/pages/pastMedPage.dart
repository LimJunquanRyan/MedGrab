import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';
import 'package:medgrab/pages/heartBeatData.dart';
import 'package:medgrab/pages/lineChart.dart';

class pastMedPage extends StatefulWidget {

  const pastMedPage({super.key});

  @override
  customButtonState createState() => customButtonState();
}
class customButtonState extends State<pastMedPage>{
  bool isSelected = false;
  bool is3Selected = false;
  bool is6Selected = false;
  bool is9Selected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Container(
        //alignment:  Alignment.centerLeft,
        padding: const EdgeInsets.only(top:20, left: 15,right: 15),
        child: Column(
          //Consult with doctor card
          children: [
            Container(
              alignment:  Alignment.centerLeft,
              child: const Icon(
                Icons.account_circle,
                color: Colors.blue,
                size: 80,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Overall report for David',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: 35,
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xFF78B59F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected = !isSelected;
                        is3Selected = false;
                        is6Selected = false;
                        is9Selected = false;
                      });
                    },
                    child:  Text(
                      '1 month',
                      style: TextStyle(
                        fontSize: 16,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: 35,
                  decoration: BoxDecoration(
                    color: is3Selected ? Color(0xFF78B59F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        is3Selected = !is3Selected;
                        isSelected = false;
                        is6Selected = false;
                        is9Selected = false;
                      });
                    },
                    child:  Text(
                      '3 month',
                      style: TextStyle(
                        fontSize: 16,
                        color: is3Selected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: 35,
                  decoration: BoxDecoration(
                    color: is6Selected ? Color(0xFF78B59F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        is6Selected = !is6Selected;
                        is3Selected = false;
                        isSelected = false;
                        is9Selected = false;
                      });
                    },
                    child:  Text(
                      '6 month',
                      style: TextStyle(
                        fontSize: 16,
                        color: is6Selected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: 35,
                  decoration: BoxDecoration(
                    color: is9Selected ? Color(0xFF78B59F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        is9Selected = !is9Selected;
                        is3Selected = false;
                        is6Selected = false;
                        isSelected = false;
                      });
                    },
                    child:  Text(
                      '9 month',
                      style: TextStyle(
                        fontSize: 16,
                        color: is9Selected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              alignment:  Alignment.centerLeft,
              height: 185,
              width: MediaQuery.of(context).size.width / 1.13,
              padding: const EdgeInsets.only(left: 15, top:20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(83, 81, 204, 1.0),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Heart Rate',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '83 ',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Baseline(
                        baseline: 30,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          'BPM',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: LineChartWidget(heartBeatData),
                  )
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