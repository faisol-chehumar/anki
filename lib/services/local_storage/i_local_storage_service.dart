abstract class ILocalStorageService {
  Future getAll(String key);
  Future<void> save(String key, dynamic item);
}
