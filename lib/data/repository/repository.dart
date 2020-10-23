import 'package:grinch_clean/data/firebase/firebase.dart';

class Repository {
  final appFirebase = AppFirebase.instance;

  Repository.init() {
    AppFirebase.instance;
  }
}
