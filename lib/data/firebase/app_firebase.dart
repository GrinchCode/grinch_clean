// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grinch_clean/data/firebase/firebase.dart';

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
  Future<List<Map<String, dynamic>>> getJedis() {
    // TODO: implement getJedis
    throw UnimplementedError();
  }

  @override
  void init() {
    // TODO: implement init
  }

  /* @override
  Future<List<Map<String, dynamic>>> getJedis() => FirebaseFirestore.instance
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
  } */
}
