import 'utils.dart';

class ConnectionUtils {
  static final _connectivity = Connectivity();

  static Future<bool> isNetworkConnected() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    connectivityResult.map((connectionType) {
      if (connectionType == ConnectivityResult.mobile || connectionType == ConnectivityResult.wifi) {
        return true;
      }
    });
    return false;
  }
}
