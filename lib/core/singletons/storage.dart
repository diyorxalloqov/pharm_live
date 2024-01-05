import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageRepository {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  /////// LIST

  Future<List<String>> getList(String key,
      {List<String> defValue = const []}) async {
    try {
      List<String>? list = await _storage.read(key: key) as List<String>?;
      return list ?? defValue;
    } catch (e) {
      return defValue;
    }
  }

  Future<void> putList(String key, List<String> value) async {
    await _storage.write(key: key, value: value.join(','));
  }

  /////// STRING

  Future<String> getString(String key, {String defValue = ''}) async {
    try {
      String? stringValue = await _storage.read(key: key);
      return stringValue ?? defValue;
    } catch (e) {
      return defValue;
    }
  }

  Future<void> putString(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<void> deleteString(String key) async {
    await _storage.delete(key: key);
  }

  ///// DOUBLE

  Future<double> getDouble(String key, {double defValue = 0.0}) async {
    try {
      double? doubleValue =
          double.tryParse(await _storage.read(key: key) ?? '');
      return doubleValue ?? defValue;
    } catch (e) {
      return defValue;
    }
  }

  Future<void> putDouble(String key, double value) async {
    await _storage.write(key: key, value: value.toString());
  }

  Future<void> deleteDouble(String key) async {
    await _storage.delete(key: key);
  }

  //////////  BOOLEAN

  Future<bool> getBool(String key, {bool defValue = true}) async {
    try {
      String? stringValue = await _storage.read(key: key);
      return stringValue?.toLowerCase() == 'true';
    } catch (e) {
      return defValue;
    }
  }

  Future<void> putBool(String key, bool value) async {
    await _storage.write(key: key, value: value.toString());
  }

  Future<void> deleteBool(String key) async {
    await _storage.delete(key: key);
  }
}
