import 'package:grinch_clean/data/firebase/firebase.dart';
import 'package:grinch_clean/data/http/app_http.dart';
import 'package:grinch_clean/domain/model/jedi.dart';
import 'package:grinch_clean/domain/repository/jedis_repository.dart';

class JedisRepositoryImpl extends JedisRepository {
  final _appFirebase = AppFirebase();
  final _appHtpp = AppHttp();

  @override
  Future<List<Jedi>> getJedisFromFirebase() =>
      _appFirebase.getJedis().then((listOfMap) =>
          listOfMap.map<Jedi>((item) => Jedi.fromMap(item)).toList());

  @override
  Future<List<Jedi>> getJedisFromApi() {
    // TODO: implement getJedisFromApi
    throw _appHtpp.getJedis();
  }

  @override
  List<Jedi> getJedisFromStorage() {
    // TODO: implement getJedisFromStorage
    throw UnimplementedError();
  }
}
