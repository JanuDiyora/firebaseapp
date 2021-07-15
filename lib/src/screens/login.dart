// // // import 'package:firebaseapp/src/screens/home.dart';
// // // import 'package:firebaseapp/src/screens/home.dart';
// // // import 'package:firebaseapp/src/screens/home.dart';
// // import 'package:firebaseapp/src/screens/save_data.dart';
// // // import 'package:firebaseapp/src/screens/save_data.dart';
// // // import 'package:flutter/gestures.dart';
// // import 'package:flutter/material.dart';
// // import 'package:firebase_auth/firebase_auth.dart';


// // class LoginScreen extends StatefulWidget {
// //   static const String id = 'login_screen';
// //   @override
// //   _LoginScreenState createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
  
// //   final _auth = FirebaseAuth.instance;
// //   String email;
// //   String password;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: 
// //       // ModalProgressHUD(
// //         // inAsyncCall: showSpinner,
// //         Padding(
// //           padding: EdgeInsets.symmetric(horizontal: 24.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: <Widget>[
// //               // Flexible(
// //               //   child: Hero(
// //               //     tag: 'logo',
// //               //     child: Container(
// //               //       height: 200.0,
// //               //       // child: Image.asset('images/logo.png'),
// //               //     ),
// //               //   ),
// //               // ),
// //               // SizedBox(
// //               //   height: 48.0,
// //               // ),
// //               TextField(
// //                  keyboardType: TextInputType.emailAddress,
                 
// //                 textAlign: TextAlign.center,
// //                 onChanged: (value) {
// //                   email = value;
// //                 },
            
// //               ),
// //               // SizedBox(
// //               //   height: 8.0,
// //               // ),
// //               TextField(
// //                 obscureText: true,
// //                 textAlign: TextAlign.center,
// //                 onChanged: (value) {
// //                   password = value;
// //                 },
// //               ),
// //               SizedBox(
// //                 height: 24.0,
// //               ),
// //               // ignore: deprecated_member_use
// //               RaisedButton(
                
// //                 color: Colors.red, 
// //                 onPressed:() async {
                  
// //                   try {
// //                     final user = await _auth.signInWithEmailAndPassword(
// //                         email: email, password: password);
// //                     if (user != null) {
// //                      Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => ChatScreen()),
// //                       );
// //                     }

// //                   } catch (e) {
// //                     print(e);
// //                   }
// //                 }, 
// //                 ),
// //               // RoundedButton(
// //               //   title: 'Log In',
// //               //   colour: Colors.lightBlueAccent,
// //               //   onPressed: () async {
// //               //     setState(() {
// //               //       showSpinner = true;
// //               //     });
// //               //     try {
// //               //       final user = await _auth.signInWithEmailAndPassword(
// //               //           email: email, password: password);
// //               //       if (user != null) {
// //               //         Navigator.pushNamed(context,LoginScreen.id);
// //               //       }

// //               //       setState(() {
// //               //         showSpinner = false;
// //               //       });
// //               //     } catch (e) {
// //               //       print(e);
// //               //     }
// //               //   },
// //               // ),
// //             ],
// //           ),
// //         ),
// //     //   ),
// //     // );
// //     );
// // }
// // }



// // phone
// // 
// // 


// import 'package:flutter/material.dart';
// import 'package:firebaseapp/otp.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController _controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Phone Auth'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(children: [
//             Container(
//               margin: EdgeInsets.only(top: 60),
//               child: Center(
//                 child: Text(
//                   'Phone Authentication',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 40, right: 10, left: 10),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Phone Number',
//                   prefix: Padding(
//                     padding: EdgeInsets.all(4),
//                     child: Text('+91'),
//                   ),
//                 ),
//                 maxLength: 10,
//                 keyboardType: TextInputType.number,
//                 controller: _controller,
//               ),
//             )
//           ]),
//           Container(
//             margin: EdgeInsets.all(10),
//             width: double.infinity,
//             // ignore: deprecated_member_use
//             child: FlatButton(
//               color: Colors.blue,
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => OTPScreen(_controller.text)));
//               },
//               child: Text(
//                 'Next',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }