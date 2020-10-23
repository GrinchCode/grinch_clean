import 'dart:async';

import 'package:get/get.dart';
import 'package:grinch_clean/domain/model/jedi.dart';
import 'package:grinch_clean/domain/use_case/get_jedis_from_network_use_case.dart';

class JediController extends GetxController {
  static JediController get instance => Get.put(JediController());

  var jedis = List<Jedi>().obs;
  var statusOfList = 0.obs;

  final GetJedisFromNetworkUseCase _getJedisFromNetworkUseCase =
      GetJedisFromNetwork();
  // final DeleteJediUseCase

  @override
  void onReady() {
    _getJedisFromNetworkUseCase.call().then((jedisFromUseCase) {
      jedis.value = jedisFromUseCase;
      statusOfList.value = jedisFromUseCase.isEmpty ? 2 : 1;
    });
  }

  void deleteJedi(String id) {
    //deleteJediUseCase.call(id);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
