abstract class ApiHelper {
  Future<dynamic> get(String url,
      {Object? data, Map<String, dynamic>? queryParameters});

}
