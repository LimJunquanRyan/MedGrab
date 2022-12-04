import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';
import 'package:medgrab/pages/consultationPage.dart';

class mapsPage extends StatelessWidget {
  const mapsPage({super.key});

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
             Row(
               children: [

                 InkWell(
                   child: Container(
                     height:180,
                     width: MediaQuery.of(context).size.width / 1.45,
                     padding:  const EdgeInsets.only(left: 15, top: 20,),
                     decoration:  const BoxDecoration(
                       color: Color.fromRGBO(120, 181, 159, 1.0),
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20),
                         bottomLeft: Radius.circular(20),
                       ),
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: const [
                         Text(
                           'Consult the',
                           style: TextStyle(
                             fontSize: 28,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                         ),
                         SizedBox(height: 5,),
                         Text(
                           'Doctor',
                           style: TextStyle(
                             fontSize: 28,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                         ),
                         SizedBox(height: 15,),
                         Text(
                           'Tell us about yourself',
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.white,
                           ),
                         ),
                       ],
                     ),
                   ),
                   onTap: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const consultationPage()),
                     );
                   },
                 ),
                 InkWell(
                   child: Container(
                     height:180,
                     width: MediaQuery.of(context).size.width / 4.5,
                     decoration:  const BoxDecoration(
                       color: Color.fromRGBO(48, 156, 255, 0.74),
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(20),
                         bottomRight: Radius.circular(20),
                       ),
                     ),
                     child: const Center(
                       child: (
                         Icon(
                           Icons.keyboard_double_arrow_right,
                           color: Colors.black,
                           size: 50,
                         )
                       ),
                     ),
                   ),
                   onTap: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const consultationPage()),
                     );
                   },
                 ),

               ],
             )
           ],
         ),
      ),
    );
  }
}