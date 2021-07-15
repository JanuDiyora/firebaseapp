// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebaseapp/Login/services/getdata.dart';
// import 'package:flutter/material.dart';
// import 'package:firebaseapp/Login/databasemanager/database_manager.dart';
// import 'package:firebaseapp/Login/services/auth_service.dart';

// class DashboardScreen extends StatefulWidget {
//   @override
//   _DashboardScreenState createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   final AuthenticationService _auth = AuthenticationService();

//   // TextEditingController _nameController = TextEditingController();
//   // TextEditingController _genderController = TextEditingController();
//   // TextEditingController _scoreController = TextEditingController();

//   // TextEditingController _firstnameController = TextEditingController();
//   // TextEditingController _lastnameController = TextEditingController();
//   // TextEditingController _emailContoller = TextEditingController();
//   // TextEditingController _passwordController = TextEditingController();
//   // TextEditingController _phonenoController = TextEditingController();

//   List userProfilesList = [];

//   String userID = "";

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   fetchUserInfo();
//   //   fetchDatabaseList();
//   // }

//   // fetchUserInfo() async {
    
//   //   FirebaseUser loggedInUser;
//   //   FirebaseUser getUser = await FirebaseAuth.instance.currentUser();
//   //   userID = getUser.uid;
//   //   loggedInUser =getUser;
//   //   print(userID);
//   //   // print(currentUser());
//   // }

//   fetchDatabaseList() async {
//     dynamic resultant = await DatabaseManager().getUsersList();

//     if (resultant == null) {
//       print('Unable to retrieve');
//     } else {
//       setState(() {
//         userProfilesList = resultant;
//         // if(userProfilesList[index]['email']==email){
//         //          print("yes ");
//         // }
//         print(userProfilesList);
//       });
//     }
//   }
   
//   updateData(String firstname, String lastname, String email, String phoneno,
//       String password,String confirmpassword,String address, String userID) async {
//     await DatabaseManager()
//         .updateUserList(firstname, lastname, email, phoneno, password,confirmpassword,address, userID);
//     fetchDatabaseList();
//   }

//   FirebaseUser loggedInUser;
//   getUserData() async {
//     FirebaseUser userdata = await FirebaseAuth.instance.currentUser();
//     setState(() {
//       loggedInUser = userdata;
//       print(loggedInUser);
//     });
//     print(loggedInUser);
//      print("-------------------------------------");
//     print(loggedInUser.email);
//      print("-------------------------------------");
//     print(loggedInUser.uid);
//      print("-------------------------------------");
//     // ignore: unused_labe
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getUserData();
//     fetchDatabaseList();
//   }
//   @override
//   Widget build(BuildContext context) {
//         return Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.deepPurple,
//             automaticallyImplyLeading: false,
//             actions: [
//               // ignore: deprecated_member_use
//               // ignore: deprecated_member_use
//               RaisedButton(
//                 onPressed: () async {
//                   await _auth.signOut().then((result) {
//                     Navigator.of(context).pop(true);
//                   });
//                 },
//                 child: Icon(
//                   Icons.exit_to_app,
//                   color: Colors.white,
//                 ),
//                 color: Colors.deepPurple,
//               )
//             ],
//           ),
//           body: Container(
//                 child: Column(
//               children: [
//                 SizedBox(
//                   height: 15,
//                 ),
                
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   "First name :  ",
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Last name :  ",
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 loggedInUser == null
//                     ? Text(
//                         "",
//                         style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//                       )
//                     : SizedBox(
//                         height: 15,
//                       ),
//                 Text(
//                   "Email : ${loggedInUser.email}",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500),
//                 ),
//             //      Text(
//             //     //  "User ${(await FirebaseAuth.instance.currentUser()).email})",
//             //   textAlign: TextAlign.left,
//             //   style: TextStyle(
//             //       fontSize: 20,
//             //       color: Colors.black,
//             //       fontWeight: FontWeight.w500),
//             // ),
//             SizedBox(
//               height: 15,
//             ),
//             Text(
//               " Uid : ${loggedInUser.uid}",
//               style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//         // --------------------------------------------------------------------------------------------------------
//             // ignore: deprecated_member_use
//             // child: OutlineButton(
//             //     padding: EdgeInsets.symmetric(horizontal: 40),
//             //     shape: RoundedRectangleBorder(
//             //         borderRadius: BorderRadius.circular(20)),
//             //     onPressed: () {
//             //        Navigator.push(
//             //         context,
//             //         MaterialPageRoute(builder: (context) => GetData()),
//             //       );
//             //     },
//             //     child: Text("SIGN OUT",
//             //         style: TextStyle(
//             //             fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
//             //   ),
//           // child: Text('${userProfilesList[lastname]}'),
//           // child: ListView.builder(
//           // itemCount: userProfilesList.length,
//           // itemBuilder: (context, index) {
//           //   return Card(
//           //     child: ListTile(
//                 // title:Text(personalinfo(_emailContoller.text)),
//                 // title: Text(userProfilesList[index]['firstname']),
//                 //   subtitle: Text(userProfilesList[index]['lastname']),
//                 //   trailing: Text('${userProfilesList[index]['firstname']}'),
//           //     ),
//           //   );
//           // })
    

// // personalinfo(BuildContext context){
// //     var index;
// //         if(_emailContoller.text=userProfilesList[index]['email']) {
// //                 print(userProfilesList);
// //     }
// //    return ;
// // }

//   // openDialogueBox(BuildContext context) {
//   //   return showDialog(
//   //       context: context,
//   //       builder: (context) {
//   //         return AlertDialog(
//   //           title: Text('Edit User Details'),
//   //           content: Container(
//   //             height: 150,
//   //             child: Column(
//   //               children: [
//   //                 TextField(
//   //                   controller: _firstnameController,
//   //                   decoration: InputDecoration(hintText: 'Name'),
//   //                 ),
//   //                  TextField(
//   //                   controller: _lastnameController,
//   //                   decoration: InputDecoration(hintText: 'Name'),
//   //                 ),
//   //                  TextField(
//   //                   controller: _emailContoller,
//   //                   decoration: InputDecoration(hintText: 'Name'),
//   //                 ),
//   //                 TextField(
//   //                   controller: _phonenoController,
//   //                   decoration: InputDecoration(hintText: 'Gender'),
//   //                 ),
//   //                 TextField(
//   //                   controller: _passwordController,
//   //                   decoration: InputDecoration(hintText: 'Score'),
//   //                 )
//   //               ],
//   //             ),
//   //           ),
//   //           actions: [
//   //             // ignore: deprecated_member_use
//   //             FlatButton(
//   //               onPressed: () {
//   //                 submitAction(context);
//   //                 Navigator.pop(context);
//   //               },
//   //               child: Text('Submit'),
//   //             ),
//   //             // ignore: deprecated_member_use
//   //             FlatButton(
//   //               onPressed: () {
//   //                 Navigator.pop(context);
//   //               },
//   //               child: Text('Cancel'),
//   //             )
//   //           ],
//   //         );
//   //       });
//   // }

//   // submitAction(BuildContext context) {
//   //   updateData(_firstnameController.text, _lastnameController.text,_emailContoller.text,_phonenoController.text,_passwordController.text
//   //      , userID);
//   //   _firstnameController.clear();
//   //   _lastnameController.clear();
//   //   _emailContoller.clear();
//   //   _phonenoController.clear();
//   //   _passwordController.clear();

//   // }
// }
