import 'package:grinch_clean/domain/model/jedi.dart';

abstract class JedisRepository {
  Future<List<Jedi>> getJedisFromFirebase();

  Future<List<Jedi>> getJedisFromApi();

  List<Jedi> getJedisFromStorage();
}
