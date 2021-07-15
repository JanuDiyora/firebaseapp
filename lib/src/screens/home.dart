// // // import 'dart:html';

// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebaseapp/src/screens/login.dart';
// // import 'package:firebaseapp/src/screens/registration_screen.dart';
// // import 'package:flutter/material.dart';
// // // import 'package:firebaseapp/src/screens/login.dart';

// // class HomeScreen extends StatelessWidget {
// //    static const String id = 'home_screen';
// //   final auth = FirebaseAuth.instance;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(  
// //        body: Container(
        
// //           padding: EdgeInsets.symmetric(horizontal: 24.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: <Widget>[
// //                 // ignore: deprecated_member_use
// //                 RaisedButton(
// //                   color: Colors.yellow,
                  
                     
// //                   onPressed: (){
// //                         Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => LoginScreen()),
// //                       );
// //                 }),
// //                  // ignore: deprecated_member_use
// //                  RaisedButton(onPressed: (){
// //                         Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => RegistrationScreen()),
// //                       );
// //                 })
              
// //             ],
// //            ),
// //         ),
// //         );

// //   }
// // }



// // // phone 

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:firebaseapp/src/screens/login.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   String uid;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () async {
//               await FirebaseAuth.instance.signOut();
//               Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginScreen()),
//                   (route) => false);
//             },
//           )
//         ],
//       ),
//       body: Center(
//         child: Text(uid),
//       ),
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     uid = FirebaseAuth.instance.currentUser.uid;
//   }
// }