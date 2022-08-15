abstract class BaseNetworkInfo {
  Future<bool> isConnectedWithWifi();
  Future<bool> isConnectedWithMobile();
  Future<bool> isConnectedWithNetwork();
}
