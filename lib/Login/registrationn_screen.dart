// import 'package:flutter/material.dart';
// import 'package:firebaseapp/Login/services/auth_service.dart';
// // import 'package:firebaseapp/Login/dashboard.dart';
// // import 'package:firebaseapp/Login/profile_view.dart';

// class RegistrationScreen extends StatefulWidget {
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final _key = GlobalKey<FormState>();

//   final AuthenticationService _auth = AuthenticationService();

//   TextEditingController _firstnameController = TextEditingController();
//   TextEditingController _lastnameController = TextEditingController();
//   TextEditingController _emailContoller = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   TextEditingController _confirmpasswordController = TextEditingController();
//   TextEditingController _phonenocontroller = TextEditingController();
//   TextEditingController _addresscontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           color: Colors.deepPurpleAccent,
//           child: Center(
//             child: Form(
//               key: _key,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Register',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(32.0),
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           controller: _firstnameController,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'first Name cannot be empty';
//                             } else
//                               return null;
//                           },
//                           decoration: InputDecoration(
//                               labelText: ' first Name',
//                               labelStyle: TextStyle(
//                                 color: Colors.white,
//                               )),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         SizedBox(height: 30),
//                         TextFormField(
//                           controller: _lastnameController,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'last Name cannot be empty';
//                             } else
//                               return null;
//                           },
//                           decoration: InputDecoration(
//                               labelText: ' last Name',
//                               labelStyle: TextStyle(
//                                 color: Colors.white,
//                               )),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         SizedBox(height: 30),
//                         TextFormField(
//                           controller: _emailContoller,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'Email cannot be empty';
//                             } else
//                               return null;
//                           },
//                           decoration: InputDecoration(
//                               labelText: 'Email',
//                               labelStyle: TextStyle(color: Colors.white)),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         SizedBox(height: 30),
//                         TextFormField(
//                           controller: _phonenocontroller,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'phoneno cannot be empty';
//                             } else
//                               return null;
//                           },
//                           decoration: InputDecoration(
//                               labelText: 'phoneno',
//                               labelStyle: TextStyle(
//                                 color: Colors.white,
//                               )),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         SizedBox(height: 30),
//                         TextFormField(
//                           controller: _passwordController,
//                           obscureText: true,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'Password cannot be empty';
//                             } else
//                               return null;
//                           },
//                           decoration: InputDecoration(
//                               labelText: 'Password',
//                               labelStyle: TextStyle(color: Colors.white)),
//                           style: TextStyle(
//                             color: Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                         TextFormField(
//                           controller: _confirmpasswordController,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'passswors cannot be empty';
//                             } else
//                               return null;
//                           },
//                           decoration: InputDecoration(
//                               labelText: ' c password',
//                               labelStyle: TextStyle(
//                                 color: Colors.white,
//                               )),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         TextFormField(
//                           controller: _addresscontroller,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'address cannot be empty';
//                             } else
//                               return null;
//                           },
//                           decoration: InputDecoration(
//                               labelText: ' address',
//                               labelStyle: TextStyle(
//                                 color: Colors.white,
//                               )),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             // ignore: deprecated_member_use
//                             FlatButton(
//                               child: Text('Sign Up'),
//                               onPressed: () async {
//                                 if (_key.currentState.validate()) {
//                                   // createUser();
//                                   dynamic result = await _auth.createNewUser(
//                                       _firstnameController.text,
//                                       _lastnameController.text,
//                                       _emailContoller.text,
//                                       _phonenocontroller.text,
//                                       _passwordController.text,
//                                       _confirmpasswordController.text,
//                                       _addresscontroller.text
//                                       );
//                                   //  Navigator.pushNamed(context, '/dashboard');
//                                   if (result == null) {
//                                     print('Insert details error');
//                                   } else {
//                                     print(result.toString());
//                                     _firstnameController.clear();
//                                     _lastnameController.clear();
//                                     _emailContoller.clear();
//                                     _phonenocontroller.clear();
//                                     _passwordController.clear();
//                                     _confirmpasswordController.clear();
//                                     _addresscontroller.clear();

//                                     // Navigator.pop(context);
//                                     Navigator.pushNamed(context, '/dashboard');
//                                     //  Navigator.push(
//                                     //              context,
//                                     //              MaterialPageRoute(builder: (context) => ProfileView()),
//                                     //                         );

//                                   }
//                                 }
//                                 // Navigator.push(
//                                 //   context,
//                                 //   MaterialPageRoute(builder: (context) => ProfileView()),
//                                 // );
//                               },
//                               color: Colors.white,
//                             ),
//                             // ignore: deprecated_member_use
//                             FlatButton(
//                               child: Text('Cancel'),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               color: Colors.white,
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void createUser() async {}
// }





















import 'package:flutter/material.dart';
import 'package:firebaseapp/Login/services/auth_service.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _key = GlobalKey<FormState>();

  final AuthenticationService _auth = AuthenticationService();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Name cannot be empty';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            )),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: _emailContoller,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Email cannot be empty';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white)),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password cannot be empty';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white)),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            child: Text('Sign Up'),
                            onPressed: () {
                              if (_key.currentState.validate()) {
                                createUser();
                              }
                            },
                            color: Colors.white,
                          ),
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void createUser() async {
    dynamic result = await _auth.createNewUser(
        _nameController.text, _emailContoller.text, _passwordController.text);
    if (result == null) {
      print('Email is not valid');
    } else {
      print(result.toString());
      _nameController.clear();
      _passwordController.clear();
      _emailContoller.clear();
      Navigator.pop(context);
    }
  }
}