import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';

class consultationPage extends StatelessWidget {
  const consultationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding:  const EdgeInsets.only(top: 20,),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Text(
                      'Hi {user}, thank you for choosing MedGrab',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'To allow us to better serve your needs',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20,),

                    Text(
                      'please fill in the following details.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ),
              const SizedBox(height: 20,),
              Container(
                padding:  const EdgeInsets.only(left: 15, top: 10,right: 15),
                height: MediaQuery.of(context).size.height / 1.65,
                width: MediaQuery.of(context).size.width / 1.11,
                decoration:  const BoxDecoration(
                  color: Color.fromRGBO(120, 181, 159, 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'What is your name?: ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 3,),
                    TextFormField(
                      style: const TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        hintText: 'Eg. David Tham Boon Keng',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.pink,
                            width: 2.0,
                          )
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(192, 212, 204, 1),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      ),
                      //OnSaved, used to run code when user saves the form
                      //onSaved: (String? value){},
                      validator: (String? value){
                        if(value != null || RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                          return "Invalid Name format";
                        }else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 7,),
                    const Text(
                      'Reason for consulation: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 3,),
                    TextFormField(
                      style: const TextStyle(fontSize: 15),
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Eg. I have cough, flue and fever recently',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.pink,
                              width: 2.0,
                            )
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(192, 212, 204, 1),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      ),
                      //OnSaved, used to run code when user saves the form
                      //onSaved: (String? value){},
                      validator: (String? value){
                        if(value != null || RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                          return "Invalid Name format";
                        }else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
