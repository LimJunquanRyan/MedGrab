import 'package:flutter/material.dart';
import 'package:medgrab/components/bottomAppBar.dart';

class consultationPage extends StatefulWidget {
  const consultationPage({Key? key}) : super(key: key);
  @override
  consultationPageState createState() => consultationPageState();

}

class consultationPageState extends State<consultationPage>{
  final _formKey = GlobalKey<FormState>();

  //String _name;
  //String _gender;
  int ifAllergyRadioButton = 0;
  int ifPreExConditions = 0;

  @override
  void initState(){
    ifAllergyRadioButton = 0;
    ifPreExConditions = 0;
    super.initState();
  }

  void _handleAllergyChange(int? value){
    if (value == null) {
      return;
    } else{
      setState(() {
        ifAllergyRadioButton = value;
      });
    }
  }
  void _handlePreExCondChange(int? value){
    if (value == null) {
      return;
    } else{
      setState(() {
        ifPreExConditions= value;
      });
    }
  }
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
          key: _formKey,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text(
                        'Hi David, thank you for choosing MedGrab',
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
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Text(
                      'What is your name? ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children:[
                        //Name
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
                            if(value == null){
                              return "Name cannot be empty";
                            }else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                              return "Invalid Name format";
                            }else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                    const Text(
                      'Reason for consultation: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 7,),
                        //Reason for consultation
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

                    const SizedBox(height: 7,),
                    //Have allergies or not
                    const Text(
                      'Do you have any allergies? ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 3,),
                        Radio(
                          value: 1,
                          groupValue: ifAllergyRadioButton,
                          activeColor: Colors.blue,
                          onChanged: _handleAllergyChange,
                        ),
                        const Text(
                            'Yes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Radio(
                          value: 2,
                          groupValue: ifAllergyRadioButton,
                          activeColor: Colors.blue,
                          onChanged: _handleAllergyChange,
                        ),
                        const Text(
                            'No',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: ifAllergyRadioButton == 1,
                      child: Column(
                        children:  [
                          TextFormField(
                            style: const TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                              hintText: 'Eg. Allergic to peanut',
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
                              if(value == null){
                                return "Name cannot be empty";
                              }else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                                return "Invalid Name format";
                              }else {
                                return null;
                              }
                            },
                          )
                        ],

                      )



                    ),
                    const SizedBox(height: 7,),
                    //Have allergies or not
                    const Text(
                      'Do you have any pre-existing conditions? ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 3,),
                        Radio(
                          value: 1,
                          groupValue: ifPreExConditions,
                          activeColor: Colors.blue,
                          onChanged: _handlePreExCondChange,
                        ),
                        const Text(
                          'Yes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Radio(
                          value: 2,
                          groupValue: ifPreExConditions,
                          activeColor: Colors.blue,
                          onChanged: _handlePreExCondChange,
                        ),
                        const Text(
                          'No',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              FloatingActionButton.extended(
                backgroundColor: Color.fromRGBO(48, 156, 255, 1.0),
                foregroundColor: Colors.white,
                onPressed:(){
                  //Do actions
                },
                label: const Text('Continue  > '),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}
