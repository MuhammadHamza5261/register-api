// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// Future<Album> fetchAlbum() async {
//   final response = await http
//       .get(Uri.parse('https://192.168.18.60/admindashboard/weshop/public/api/'));
//
//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }
//
// class Album {
//   final String name;
//   final String email;
//   final int password;
//
//   const Album({
//     required this.name,
//     required this.email,
//     required this.password,
//   });
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       email: json['email'],
//       name: json['name'],
//       password: json['password'],
//     );
//   }
// }
//
//  void main() => runApp(const MyApp2());
//
// class MyApp2 extends StatefulWidget {
//   const MyApp2({super.key});
//
//   @override
//   State<MyApp2> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp2> {
//   late Future<Album> futureAlbum;
//
//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<Album>(
//             future: futureAlbum,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data!.name);
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }
//               // By default, show a loading spinner.
//               return const CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
