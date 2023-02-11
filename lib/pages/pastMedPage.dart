import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';

class pastMedPage extends StatefulWidget {

  const pastMedPage({super.key});

  @override
  customButtonState createState() => customButtonState();
}
class customButtonState extends State<pastMedPage>{
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Container(
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
                    color: isSelected ? Color(0xFF78B59F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child:  Text(
                      '3 month',
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
                    color: isSelected ? Color(0xFF78B59F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child:  Text(
                      '6 month',
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
                    color: isSelected ? Color(0xFF78B59F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child:  Text(
                      '9 month',
                      style: TextStyle(
                        fontSize: 16,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}