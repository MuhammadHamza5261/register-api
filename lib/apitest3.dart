// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:http/http.dart';
//
// import 'Sign_In.dart';
// import 'getstarted.dart';
//
// class ApiService {
//   get emailController => null;
//
//   callloginapi(
//       var email,
//       ) async {
//     LoginReg? userModel;
//
//     Response response = await post(
//         Uri.parse('http://13.127.138.139/api/Login_Register_User'),
//         body: {
//           'mobile': email,
//         });
//
//     var jsonResponse = jsonDecode(response.body.toString());
//     userModel = LoginReg.fromJson(jsonResponse);
//     print(jsonResponse['token']);
//     var flag = jsonResponse['data']['flag'];
//     log('==========flag ===========$flag');
//     //return userModel;
//     var message = jsonResponse['message'];
//     if (response.statusCode == 200) {
//       if (flag == 'true') {
//         Get.offAllNamed(PageRoutes.home);
//         // t
//         emailController.clear();
//         print('$message');
//
//         // moveToHome(context);
//
//       } else {
//         // server error
//         print('Not Register');
//       }
//
//     }
//   }}
//
// class LoginReg {
// }