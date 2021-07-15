// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebaseapp/Login/databasemanager/database_manager.dart';

// class AuthenticationService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   Future<String> getCurrentUID() async {
//     // print(uid);
//     return (await _auth.currentUser()).uid;
//   }

//   // GET CURRENT USER
//   Future getCurrentUser() async {
//     // print(currentUser());
//     return await _auth.currentUser();
//   }

// // registration with email and password

//   Future createNewUser(String firstname,String  lastname, String email,String phoneno,String password,String confirmpassword,String address) async {
//     try {
//       AuthResult result = await _auth.createUserWithEmailAndPassword(
//           email:email.trim(), password: password);
//       FirebaseUser user = result.user;
//       await DatabaseManager().createUserData(firstname, lastname, email, phoneno,password,confirmpassword,address,user.uid);
//       print("------------------------------------");
//       print(user);
//       print("------------------------------------");
//       return user;
//     } catch (e) {
//       print(e.toString());
//     }
//   }
//   // / Update the username
//   //   await updateUserName(name, authResult.user);
//   //   return authResult.user.uid;
//   // }
//   // Future updateUserName(String name, FirebaseUser currentUser) async {
//   //   var userUpdateInfo = UserUpdateInfo();
//   //   userUpdateInfo.displayName = name;
//   //   await currentUser.updateProfile(userUpdateInfo);
//   //   await currentUser.reload();
//   // }

// // sign with email and password

//   Future loginUser(String email, String password) async {
//     try {
//       AuthResult result = await _auth.signInWithEmailAndPassword(
//           email: email.trim(), password: password);
//       print(result.user);
//       return result.user;
//     } catch (e) {
//       print(e.toString());
//     }
//   }

// // signout

//   Future signOut() async {
//     try {
//       return _auth.signOut();
//     } catch (error) {
//       print(error.toString());
//       return null;
//     }
//   }
// }


















import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/Login/databasemanager/database_manager.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

// registration with email and password

  Future createNewUser(String name, String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      await DatabaseManager().createUserData(name, 'Male', 100, user.uid);
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

// sign with email and password

  Future loginUser(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }

// signout

  Future signOut() async {
    try {
      return _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}