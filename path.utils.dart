import 'package:path_provider/path_provider.dart';

class PathUtil {
  /// Método utilizado para recuperar o path da aplicação
  static Future<String> get applicationPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  /// Método utilizado para recuperar o path temporário da aplicação
  static Future<String> get tempPath async {
    final directory = await getTemporaryDirectory();
    return directory.path;
  }

  /// Método utilizado para recuperar o path de cache da aplicação
  static Future<String> get cachePath async {
    final directory = await getApplicationCacheDirectory();
    return directory.path;
  }

  /// Método utilizado para recuperar o path de downloads do dispositivo
  static Future<String> get downloadsPath async {
    final directory = await getDownloadsDirectory();
    return directory?.path ?? "";
  }
}
