// // import 'package:firebaseapp/src/screens/home.dart';
// // import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';

// // // void main() => runApp(MyApp());

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   Firebase.initializeApp();
// //   runApp(MaterialApp(
// //     home: MyApp(),
// //     debugShowCheckedModeBanner: false,
// //   ));
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home:HomeScreen(),
// //     );
// //   }
// // }

// // //phone
// // //
// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:flutter/material.dart';

// // // import 'package:firebaseapp/src/screens/login.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   Firebase.initializeApp();
// // //   runApp(MaterialApp(
// // //     home: MyApp(),
// // //     debugShowCheckedModeBanner: false,
// // //   ));
// // // }

// // // class MyApp extends StatelessWidget {
// // //   // This widget is the root of your application.
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return LoginScreen();
// // //   }
// // // }




// //other code   ---------------------------



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:firebaseapp/Login/dashboard.dart';
// import 'package:firebaseapp/Login/registrationn_screen.dart';
// import 'package:firebaseapp/Login/services/auth_service.dart';

//  void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/login',
//       routes: {
//         '/login': (context) => LoginScreen(),
//         '/register': (context) => RegistrationScreen(),
//         '/dashboard': (context) => DashboardScreen(),
//       },
//     );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _key = GlobalKey<FormState>();

//   final AuthenticationService _auth = AuthenticationService();

//   TextEditingController _emailContoller = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.deepPurple,
//         child: Center(
//           child: Form(
//             key: _key,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Login',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 30,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(32.0),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 30),
//                       TextFormField(
//                         controller: _emailContoller,
//                         validator: (value) {
//                           if (value.isEmpty) {
//                             return 'Email cannot be empty';
//                           } else
//                             return null;
//                         },
//                         decoration: InputDecoration(
//                             labelText: 'Email',
//                             labelStyle: TextStyle(color: Colors.white)),
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       SizedBox(height: 30),
//                       TextFormField(
//                         controller: _passwordController,
//                         obscureText: true,
//                         validator: (value) {
//                           if (value.isEmpty) {
//                             return 'Password cannot be empty';
//                           } else
//                             return null;
//                         },
//                         decoration: InputDecoration(
//                             labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.white)),
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       // ignore: deprecated_member_use
//                       FlatButton(
//                         child: Text('Not registerd? Sign up'),
//                         onPressed: () {
//                           Navigator.of(context).push(
//                             CupertinoPageRoute(
//                               fullscreenDialog: true,
//                               builder: (context) => RegistrationScreen(),
//                             ),
//                           );
//                         },
//                         textColor: Colors.white,
//                       ),
//                       SizedBox(height: 30),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           // ignore: deprecated_member_use
//                           FlatButton(
//                             child: Text('Login'),
//                             onPressed: () async {
//                               if (_key.currentState.validate()) {
//                                  dynamic authResult =
//                                       await _auth.loginUser(_emailContoller.text, _passwordController.text);
//                                               if (authResult == null) {
//                                                 print('Sign in error. could not be able to login');
//                                               } else {
//                                                 _emailContoller.clear();
//                                                 _passwordController.clear();
//                                                 Navigator.pushNamed(context, '/dashboard');
//                                             }
//                               }
//                             },
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // void signInUser() async {
   
//   // }
// }


// // import 'package:firebaseapp/second_login/login.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       theme: ThemeData(
// //         primarySwatch: Colors.green,
// //       ),
// //       home: LoginPage(),
// //     );
// //   }
// // }



























import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:firebaseapp/Login/dashboard.dart';
import 'package:firebaseapp/Login/registrationn_screen.dart';
import 'package:firebaseapp/Login/services/auth_service.dart';

 void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        // '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}
// 

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();

  final AuthenticationService _auth = AuthenticationService();

  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
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
                      SizedBox(height: 5),
                      FlatButton(
                        child: Text('Not registerd? Sign up'),
                        onPressed: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => RegistrationScreen(),
                            ),
                          );
                        },
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            child: Text('Login'),
                            onPressed: () {
                              if (_key.currentState.validate()) {
                                signInUser();
                              }
                            },
                            color: Colors.white,
                          ),
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

  void signInUser() async {
    dynamic authResult =
        await _auth.loginUser(_emailContoller.text, _passwordController.text);
    if (authResult == null) {
      print('Sign in error. could not be able to login');
    } else {
      _emailContoller.clear();
      _passwordController.clear();
      Navigator.pushNamed(context, '/register');
    }
  }
}