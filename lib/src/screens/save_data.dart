// import 'package:firebaseapp/src/screens/homehome.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_core/firebase_core.dart';


// final _firestore = Firestore.instance;
// FirebaseUser loggedInUser;

// class ChatScreen extends StatefulWidget {
//   static const String id = 'chat_screen';
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final nameTextController=TextEditingController();
//   final emailTextController=TextEditingController();
//   final phonenoTextController=TextEditingController();
//   final passwordTextController=TextEditingController();
//   final confirmpasswordTextController=TextEditingController();

//   final _auth = FirebaseAuth.instance;

//   String name;
//   String email;
//   String phoneno;
//   String password;
//   // ignore: non_constant_identifier_names
//   String Confirmpassword;

//   @override
//   void initState() {
//     super.initState();

//     getCurrentUser();
//   }

//   void getCurrentUser() async {
//     try {
//       final user = await _auth.currentUser;
//       if (user != null) {
//         loggedInUser = user;
//         // String name = user.name;
//         // String email = user.email;
        
//         // The user's Id, unique to the Firebase project.
//         // Do NOT use this value to authenticate with your backend server, if you
//         // have one; use User.TokenAsync() instead.
//         // String uid = user.UserId;
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
   
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: null,
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(Icons.close),
              
//               onPressed: () {
//                 _auth.signOut();
//                 Navigator.pop(context);
//               }),
//         ],
       
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             // MessagesStream(),
//             // Container(
//               // decoration: kMessageContainerDecoration,
//               // child: Row(
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 // children: <Widget>[
//                     TextField(
//                       controller: nameTextController,
//                       onChanged: (value) {
//                         name = value;
//                       },
//                       // decoration: kMessageTextFieldDecoration,
//                     ),
//                      TextField(
//                       controller: emailTextController,
//                       onChanged: (value) {
//                         email = value;
//                       },
//                       // decoration: kMessageTextFieldDecoration,
//                     ),
//                      TextField(
//                       controller: phonenoTextController,
//                       onChanged: (value) {
//                         phoneno = value;
//                       },
//                       // decoration: kMessageTextFieldDecoration,
//                     ),
//                      TextField(
//                       controller: passwordTextController,
//                       onChanged: (value) {
//                         password = value;
//                       },
//                       // decoration: kMessageTextFieldDecoration,
//                     ),
//                      TextField(
//                       controller: confirmpasswordTextController,
//                       onChanged: (value) {
//                         Confirmpassword = value;
//                       },
//                       // decoration: kMessageTextFieldDecoration,
//                     ),
                
//                   // ignore: deprecated_member_use
//                   RaisedButton(
//                     child:Text("Send"),
//                     onPressed: () {
//                       // messageTextController.clear();
//                       _firestore.collection('userdetails').add({
//                         'name':name,
//                         'email':email,
//                         'phone number':phoneno,
//                         'password':password,
//                         'confirm password':Confirmpassword,
//                         'sender': loggedInUser.email,
//                       });
//                         Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => ProfileView()),
//                       );
//                       // getCurrentUser();
//                     },
//                           ),
//                 // ],
//               // ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // class MessagesStream extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamBuilder(
// //       stream: _firestore.collection('userdetails').snapshots(),
// //       builder: (context, snapshot) {
// //         if (!snapshot.hasData) {
// //           return Center(
// //             child: CircularProgressIndicator(
// //               backgroundColor: Colors.lightBlueAccent,
// //             ),
// //           );
// //         }
// //         final userdetails = snapshot.data.documents.reversed;
// //         List<MessageBubble> messageBubbles = [];
// //         for (var message in userdetails) 
// //         {
// //           final name=namee.data['name'];
// //           final email=emaill.data['email'];
// //           final phoneno=phoneno.data['phone number'];

// //           final messageSender = message.data['sender'];

// //           final currentUser = loggedInUser.email;

// //           final messageBubble = MessageBubble(
// //             sender: messageSender,
// //             text: messageText,
// //             namee=name,

// //             isMe: currentUser == messageSender,
// //           );

// //           messageBubbles.add(messageBubble);
// //         }
// //         return Expanded(
// //           child: ListView(
// //             reverse: true,
// //             padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
// //             children: messageBubbles,
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }

// // class MessageBubble extends StatelessWidget {
// //   MessageBubble({this.sender, this.namee,this.emaill,this.phonenoo,this.passwordd,this.confirmpasswordd, this.isMe});

// //   final String sender;
// //   final String namee;
// //   final String emaill;
// //   final String phonenoo;
// //   final String passwordd;
// //   final String confirmpasswordd;


// //   final bool isMe;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: EdgeInsets.all(10.0),
// //       child: Column(
// //         crossAxisAlignment:
// //             isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
// //         children: <Widget>[
// //           Text(
// //             sender,
// //             style: TextStyle(
// //               fontSize: 12.0,
// //               color: Colors.black54,
// //             ),
// //           ),
// //           Material(
// //             borderRadius: isMe
// //                 ? BorderRadius.only(
// //                     topLeft: Radius.circular(30.0),
// //                     bottomLeft: Radius.circular(30.0),
// //                     bottomRight: Radius.circular(30.0))
// //                 : BorderRadius.only(
// //                     bottomLeft: Radius.circular(30.0),
// //                     bottomRight: Radius.circular(30.0),
// //                     topRight: Radius.circular(30.0),
// //                   ),
// //             elevation: 5.0,
// //             color: isMe ? Colors.lightBlueAccent : Colors.white,
// //             child: Padding(
// //               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
// //               // child: Text(
                 
// //               //   style: TextStyle(
// //               //     // color: isMe ? Colors.white : Colors.black54,
// //               //     fontSize: 15.0,
// //               //   ),
// //               // ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }