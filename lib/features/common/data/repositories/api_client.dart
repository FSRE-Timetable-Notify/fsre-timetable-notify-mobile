import 'package:fsre_notifier/_all.dart';

class ApiClient extends BaseClient {
  ApiClient({
    required this.isDebugMode,
  });

  bool isDebugMode;

  String get baseUrl => isDebugMode ? localUrl : remoteUrl;

  static const String localUrl = "http://93.180.103.242:5000";
  static const String remoteUrl = "http://204.216.216.141:5000";

  final Client _client = Client();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    debugPrint("Request: ${request.url}");

    return _client.send(request);
  }
}
