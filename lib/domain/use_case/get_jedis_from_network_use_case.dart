import 'package:grinch_clean/data/repository/jedis_respository_impl.dart';
import 'package:grinch_clean/domain/model/jedi.dart';
import 'package:grinch_clean/domain/repository/jedis_repository.dart';

mixin GetJedisFromNetworkUseCase {
  Future<List<Jedi>> call();
}

class GetJedisFromNetwork implements GetJedisFromNetworkUseCase {
  final JedisRepository _jedisRepository = JedisRepositoryImpl();

  @override
  Future<List<Jedi>> call() {
    return _jedisRepository.getJedisFromFirebase();
  }
}
