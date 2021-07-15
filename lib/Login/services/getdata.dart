// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class GetData extends StatefulWidget {
//   // GetData({Key? key}) : super(key: key);

//   @override
//   _GetDataState createState() => _GetDataState();
// }

// class _GetDataState extends State<GetData> {
//   FirebaseUser loggedInUser;
//   getUserData() async {
//     FirebaseUser userdata = await FirebaseAuth.instance.currentUser();
//     // if (userdata != null) {
//     //   // Name, email address, and profile photo Url
//     //   String name = loggedInUser.firstname();
//     //   String email = userdata.getEmail();

//     //   // Check if user's email is verified
//     //   // boolean emailVerified = user.isEmailVerified();

//     //   // The user's ID, unique to the Firebase project. Do NOT use this value to
//     //   // authenticate with your backend server, if you have one. Use
//     //   // FirebaseUser.getIdToken() instead.
//     //   // String uid = user.getUid();
//     // }
//     print(userdata);

//     setState(() {
//       loggedInUser = userdata;
//       print(loggedInUser);
//     });
//     print(loggedInUser);
//     print(loggedInUser.email);
//     print(loggedInUser.uid);
//     // print(loggedInUser.pass);
//     // ignore: unused_labe
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getUserData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//             // color: kPrimaryColor,
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Text(
//               " User Details",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//             ),
//             loggedInUser == null
//                 ? Text(
//                     "",
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//                   )
//                 : SizedBox(
//                     height: 15,
//                   ),
//             Text(
//               "Email : ${loggedInUser.email}",
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Text(
//               " Uid : ${loggedInUser.uid}",
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
