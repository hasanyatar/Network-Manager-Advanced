import 'package:connectivity_plus/connectivity_plus.dart';

import 'base_network_info.dart';

class NetworkConnectInformation implements BaseNetworkInfo {
  NetworkConnectInformation._();
  static NetworkConnectInformation? _instance;
  static get instance => _instance ??= NetworkConnectInformation._();

  @override
  Future<bool> isConnectedWithWifi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  @override
  Future<bool> isConnectedWithMobile() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    }
    return false;
  }

  @override
  Future<bool> isConnectedWithNetwork() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}
