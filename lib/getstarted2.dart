import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'Sign_In.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'mylist.dart';
///stf
class getstarted2 extends StatefulWidget {
  const getstarted2({Key? key}) : super(key: key);

  @override
  State<getstarted2> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: getstartedSTF(),
    );
  }
}
///stf
class getstartedSTF extends StatefulWidget {
  const getstartedSTF({Key? key}) : super(key: key);

  @override
  State<getstartedSTF> createState() => _getstartedSTFState();
}

class _getstartedSTFState extends State<getstartedSTF> {


  ///cONTROLLERS FOR CONTAROLL THE FIELD

  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  // get client => null;
  //
  //
  //  void registeruser ()async{
  //   var url = 'https://192.168.18.60/admindashboard/weshop/public/api/register/';
  //   // var url = 'https://192.168.18.60/admindashboard/weshop/public/api/';
  //   var data={
  //     "name": name.text,
  //     "email": email.text,
  //     "password": password.text,
  //   };
  //    var body = json.encode(data);
  //    var urlParse = Uri.parse(url);
  //    Response response= await http.post(
  //      urlParse,
  //      body: body,
  //      headers: {
  //        "Content-Type": "application/json"
  //      }
  //    );
  //    var dataa =jsonDecode(response.body);
  //    print(dataa);
  // }
















  late double width;
  late double height;

  bool _obscureText = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {






    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;










    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ///1St row icon
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(),
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      icon:Icon( Icons.arrow_back_outlined,size: 25.0, color: Color.fromRGBO(52,107,33,1), ),
                    ),
                  ),
                ],
              ),
            ),
            ///2nd row text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 17.0,left:15.0, ),
                  child: Text('Get Started222',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(20,20,20,1),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
            ///full name input field
            SizedBox(
              height: 36.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                controller: name,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: Color.fromRGBO(100,100,100,1),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                  ),
                  hintText: 'Full Name',
                ),
              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },
            ),
            ///email input fields
            SizedBox(
              height: 1,
            ),
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                controller: email,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: Color.fromRGBO(100,100,100,1),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                  ),
                  hintText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },
            ),
            ///password input fields
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                controller: password,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: _obscureText,
                cursorColor:Color.fromRGBO(100,100,100,1),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10.0,left: 10.0,),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                    ),
                    hintText: 'Password',
                    suffixIcon:  GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: new Icon(
                        _obscureText ?
                        Icons.visibility_off: Icons.visibility,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                ),
                // validator: MultiValidator(
                //     [
                //       RequiredValidator(
                //           errorText: 'Please enter email')
                //     ]
                //
                // ),


              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },

            ),
            ///5th row confirm password field
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: _obscureText2,
                cursorColor: Color.fromRGBO(100,100,100,1),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10.0,left: 10.0,),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                    ),
                    hintText: 'Confirm Password',
                    suffixIcon:  GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText2 = !_obscureText2;
                        });
                      },
                      child: new Icon(
                        _obscureText2 ?
                        Icons.visibility_off: Icons.visibility,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                ),
                // validator: MultiValidator(
                //     [
                //       RequiredValidator(
                //           errorText: 'Please enter email')
                //     ]
                //
                // ),


              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },

            ),
            ///Get started btn
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.only(),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0,173,25,1),
                ),
                onPressed: (){

                  // login(name.text, email.text, password.text);
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist()));
                },
                child: Text('Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255,255,255,1),
                  ),
                ),
              ),
            ),
            ///horizontal row
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19.0,),
                    width: width*0.38,
                    child: Divider(
                      color: Color.fromRGBO(210,209,209,1),
                      height: 5,
                      thickness: 1,
                      indent: 1,
                      endIndent: 3,
                    ),
                  ),
                  Container(
                    child: Text('Or',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(100,100,100,1),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right:20.0,),
                    width: width*0.38,
                    child: Divider(
                      color: Color.fromRGBO(210,209,209,1),
                      height: 5,
                      thickness: 1,
                      indent: 1,
                      endIndent: 3,
                    ),
                  ),

                ],
              ),
            ),
            ///btns row
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19.0,),
                    width: MediaQuery.of(context).size.width*0.43,
                    height: MediaQuery.of(context).size.height*0.05,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color.fromRGBO(234,234,234,1) ),
                        ),
                        onPressed: (){},
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('Assests/Images/google.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 25.0,),
                              child: Text('Google',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(20,20,20,1),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 9.0,),
                    width: MediaQuery.of(context).size.width*0.43,
                    height: MediaQuery.of(context).size.height*0.05,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color.fromRGBO(234,234,234,1) ),
                        ),
                        onPressed: (){},
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('Assests/Images/facebook-alt.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 25.0,),
                              child: Text('Facebook',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(20,20,20,1),

                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            ///have an cccount
            SizedBox(
              height: 16.0,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => signin1()));
              },
              child: Container(
                child: Center(
                  child: Text('Already have an account?',
                    style: TextStyle(
                      color:Color.fromRGBO(20,20,20,1),
                      fontSize:  14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ),

    );

  }
}





