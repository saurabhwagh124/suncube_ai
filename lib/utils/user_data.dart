import 'package:get_storage/get_storage.dart';

// email key
// role key
// isLogged key

class UserData {
  static final UserData _instance = UserData._internal();
  late GetStorage _box;

  factory UserData() {
    return _instance;
  }

  UserData._internal() {
    _box = GetStorage('UserData');
  }

  void write(String key, dynamic value) {
    if (value is Set) {
      _box.write(key, value.toList());
    } else {
      _box.write(key, value);
    }
    _box.save();
  }

  T? read<T>(String key) {
    final value = _box.read<T>(key);

    return value;
  }

  void remove(String key) {
    _box.remove(key);
    _box.save();
  }

  void clear() {
    _box.erase();
    _box.save();
  }
}
