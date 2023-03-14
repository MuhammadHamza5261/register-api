import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'datamodel.dart';
import 'forgotpassword.dart';
import 'getstarted.dart';
import 'main.dart';
import 'package:flutter/material.dart';
// import 'package:form_field_validator/form_field_validator.dart';
class signin1 extends StatelessWidget {
  const signin1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: signin1STF(),
    );
  }
}
///stf
class signin1STF extends StatefulWidget {
  const signin1STF({Key? key}) : super(key: key,);

  @override
  State<signin1STF> createState() => _signin1STFState();
}

class _signin1STFState extends State<signin1STF> {



  late datamodel _datamodel;

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  // int id =40;

  late double width;
  late double height;

  bool _obscureText = true;


  GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // String token;


    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

     var obscureText = true;


    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Form(
              key: _FormKey,
              child: Column(
                children: [
                  ///ICON
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
                            icon:Icon( Icons.arrow_back_outlined,size: 25.0,color: Color.fromRGBO(52,107,33,1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /// Signin text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 23.0,left:15.0, ),
                        child: Text('Sign In',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(20,20,20,1),
                          ),
                        ),
                      ),
                    ],
                  ),

                  ///btns row
                  Container(
                    margin: EdgeInsets.only(top: 50.0,),
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
                  /// Horizontal lines row
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


                  ///Email input field
                  Container(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 17.0,),
                          width: width*0.93,
                          height: height*0.053,
                          child: TextFormField(
                            controller: email,
                            validator: (value){
                              if(value == null || value.isEmpty ){
                                // return 'Please enter your email';
                              }
                            },
                            // autovalidateMode: AutovalidateMode.onUserInteraction,
                            cursorColor: Color.fromRGBO(100,100,100,1),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 17.0,top:10.0,),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                                ),
                                hintText: 'Email',
                            ),
                          ),
                          // validator: (password) {
                          //   if (isPasswordValid(password)) return null;
                          //   else
                          //     return 'Enter a valid password';
                          // },
                        ),
                        ///password
                        Container(
                          margin: EdgeInsets.only(top: 17.0,),
                          width: width*0.93,
                          height: height*0.053,
                          child: TextFormField(
                            controller: password,
                            // autovalidateMode: AutovalidateMode.onUserInteraction,
                              obscureText: _obscureText,
                            cursorColor: Color.fromRGBO(100,100,100,1),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15.0,top:10.0,),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(0,173,25,1), width: 1.2),
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
                      ],
                    ),
                  ),

















                  ///forgot password
                  Container(
                    margin: EdgeInsets.only(right: 17.0,top: 8.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgotpassword()));
                          },
                          child: Container(
                            child: Text('Forgot password?',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Color.fromRGBO(20,20,20,1),
                              ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ///SIGN IN btn
                  Container(
                    margin: EdgeInsets.only(),
                    width: MediaQuery.of(context).size.width*0.93,
                    height: MediaQuery.of(context).size.height*0.053,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0,173,25,1),
                      ),
                      onPressed:() async{
                        // loginUser;
                        // _handleLogin();
                        loginUser();
                      },
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist()));
                      child: Text('Sign IN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(255,255,255,1),
                        ),
                      ),
                    ),
                  ),
                  ///account text container
                  SizedBox(
                    height: 16.0,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => getstarted()));
                    },
                    child: Container(
                      child: Center(
                        child: Text('Don\'t have an account?',
                          style: TextStyle(
                            color: Color.fromRGBO(20,20,20,1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),










                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
  ///Login user correct api
  void loginUser() async{
    ///ye login ki api ka link ha
    var url ="http://192.168.18.60/admindashboard/weshop/public/api/login";
    var data={
      "email" : email.text,
      "password" : password.text,
  };
    var bodyy=json.encode(data);
    var urlParse= Uri.parse(url);
    Response response =  await http.post(
        urlParse,
        body: bodyy,
        headers: {
          "Content-Type": "application/json",
        }
    );

    var dataa=jsonDecode(response.body);
    print(dataa);
     print(response.body);
  }
}



