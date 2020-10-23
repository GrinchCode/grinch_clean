import 'package:grinch_clean/data/firebase/firebase.dart';

import 'package:firebase/firebase.dart' as firebase;

class AppFirebase implements FirebaseRepository {
  static AppFirebase _instance;

  static AppFirebase get instance {
    if (_instance == null) {
      var appFirebase = AppFirebase();
      appFirebase.init();
      _instance = appFirebase;
    }

    return _instance;
  }

  @override
  Future<List<Map<String, dynamic>>> getJedis() => firebase
      .firestore()
      .collection('jedis')
      .get()
      .then((snapshot) => snapshot.docs
          .map<Map<String, dynamic>>((doc) => {
                'key': doc.id,
                ...doc.data(),
              })
          .toList());

  @override
  void init() {
    var apps = firebase.apps;

    if (apps.length == 0) {
      firebase.initializeApp(
          //your keys
          );
    }
  }
}
