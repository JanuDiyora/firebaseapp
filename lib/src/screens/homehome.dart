// // import 'package:firebase_auth/firebase_auth.dart';

// // import 'package:flutter/material.dart';
// // // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:firebaseapp/src/screens/login.dart';
// // // 

// // class HomeHome extends StatelessWidget {
  
// //   final auth = FirebaseAuth.instance;

// //   // ignore: deprecated_member_use
// //     var user = firebase.auth().currentUser;
// //     var name, email;
// //           if (user!= null) { 
// //             name = user.name; 
// //               email = user.email; 
              
// //                 // uid = user.uid;  // The user's ID, unique to the Firebase project. Do NOT use   
// //                                // this value to authenticate with your backend server, if      
// //          //              // you have one. Use User.getToken() instead.
// //          }
// //       firebase.auth().onAuthStateChanged(function(user)  { 
// //           if (user) { 
// //               // User is signed in. 
// //               } 
// //                 else {   
// //                   // No user is signed in.
// //                 }});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(  
// //        body: Container(
                   
// //        ),
// //     );
// //   }
// // }
// // 

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:intl/intl.dart';


// class ProfileView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         width: MediaQuery
//             .of(context)
//             .size
//             .width,
//         child: Column(
//           children: <Widget>[
//             FutureBuilder(
//               future: Provider
//                   .of(context)
//                   .auth
//                   .getCurrentUser(),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   return displayUserInformation(context, snapshot);
//                 } else {
//                   return CircularProgressIndicator();
//                 }
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget displayUserInformation(context, snapshot) {
//     final user = snapshot.data;

//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Name: ${user.name ?? 'Anonymous'}", style: TextStyle(fontSize: 20),),
//         ),

//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text("Email: ${user.email ?? 'Anonymous'}", style: TextStyle(fontSize: 20),),
//         ),

//         // Padding(
//         //   padding: const EdgeInsets.all(8.0),
//         //   child: Text("Created: ${DateFormat('MM/dd/yyyy').format(
//         //       user.metadata.creationTime)}", style: TextStyle(fontSize: 20),),
//         // ),

//         showSignOut(context, user.isAnonymous),
//       ],
//     );
//   }

//   Widget showSignOut(context, bool isAnonymous) {
//     if (isAnonymous == true) {
//       return RaisedButton(
//         child: Text("Sign In To Save Your Data"),
//         onPressed: () {
//           // Navigator.of(context).pushNamed('/convertUser');
//         },
//       );
//     } else {
//       return RaisedButton(
//         child: Text("Sign Out"),
//         onPressed: () async {
//           try {
//             await Provider.of(context).auth.signOut();
//           } catch (e) {
//             print(e);
//           }
//         },
//       );
//     }
//   }
// }