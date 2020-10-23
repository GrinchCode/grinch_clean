export 'web_firebase.dart';

abstract class FirebaseRepository {
  void init();

  Future<List<Map<String, dynamic>>> getJedis();
}
