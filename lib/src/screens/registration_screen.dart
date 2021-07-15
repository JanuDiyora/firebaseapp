// // import 'package:firebaseapp/src/screens/home.dart';
// import 'package:firebaseapp/src/screens/save_data.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebaseapp/src/screens/home.dart';

// class RegistrationScreen extends StatefulWidget {
//   static const String id = 'registration_screen';
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final _auth = FirebaseAuth.instance;
//   bool showSpinner = false;
//   String email;
//   String password;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//        body: 
//       // ModalProgressHUD(
//         // inAsyncCall: showSpinner,
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               // Flexible(
//               //   child: Hero(
//               //     tag: 'logo',
                  
//               //   ),
//               // ),
//               // SizedBox(
//               //   height: 48.0,
//               // ),
//               TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 textAlign: TextAlign.center,
//                 onChanged: (value) {
//                   email = value;
//                 },
//               ),
//               SizedBox(
//                 height: 8.0,
//               ),
//               TextField(
//                 obscureText: true,
//                 textAlign: TextAlign.center,
//                 onChanged: (value) {
//                   password = value;
//                 },
              
//               ),
//               SizedBox(
//                 height: 24.0,
//               ),
//               // ignore: deprecated_member_use
//               RaisedButton(
//                color: Colors.red,
//                 onPressed: () async {
//                   try {
//                     final newUser = await _auth.createUserWithEmailAndPassword(
//                         email: email, password: password);
//                     if (newUser != null) {
//                      Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => ChatScreen()),
//                       );
//                     }
//                   } catch (e) {
//                     print(e);
//                   }
//                 },
//               ),
//             ],


//           ),
//         ),
//       );
      
//   }
// }