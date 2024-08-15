import 'package:connectivity_plus/connectivity_plus.dart';

/// Classe utilizada para fazer verificações relacionadas a internet do dispostivo.
class NetworkUtil {
  /// Método utilizado para checar a conexão com internet do dispositivo.
  static Future<bool> checkInternet() async {
    var connectivity = await Connectivity().checkConnectivity();
    return !(connectivity.first == ConnectivityResult.none);
  }
}
