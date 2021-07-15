// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseManager {
  
//   final CollectionReference profileList =
//       Firestore.instance.collection('userprofileInfo');

//   Future<void> createUserData(
//       String firstname, String lastname,String email, String phoneno,String password,String confirmpassword, String address, String uid) async {
//     return await profileList
//         .document(uid)
//         .setData({'firstname': firstname, 'lastname' :lastname,'email':email,'phoneno':phoneno,'password': password,'confirmpassword': confirmpassword ,'address':address});
//   }

//   Future updateUserList(String firstname, String lastname,String email, String phoneno,String password,String confirmpassword, String address , String uid) async {
//     return await profileList.document(uid).updateData({
//       'firstname': firstname, 'lastname' :lastname,'email':email,'phoneno':phoneno,'password': password,'confirmpassword': confirmpassword ,'address':address
//     });
//   }

//   Future getUsersList() async {
//     List itemsList = [];

//     try {
//       await profileList.getDocuments().then((querySnapshot) {
//         querySnapshot.documents.forEach((element) {
//           itemsList.add(element.data);
//         });
//       });
//       print(itemsList);
//       print("-------------------------------------");
//       return itemsList;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference profileList =
      Firestore.instance.collection('profileInfo');

  Future<void> createUserData(
      String name, String gender, int score, String uid) async {
    return await profileList
        .document(uid)
        .setData({'name': name, 'gender': gender, 'score': score});
  }

  Future updateUserList(String name, String gender, int score, String uid) async {
    return await profileList.document(uid).updateData({
      'name': name, 'gender': gender, 'score': score
    });
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await profileList.getDocuments().then((querySnapshot) {
        querySnapshot.documents.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}