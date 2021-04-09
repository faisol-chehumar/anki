import 'package:anki/services/local_storage/i_local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefsService implements ILocalStorageService {
  @override
  Future getAll(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getInt(key);
  }

  @override
  Future<void> save(String key, dynamic item) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setInt(key, item);
  }
}
