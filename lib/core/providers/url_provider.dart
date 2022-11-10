class UrlProvider {
  Uri getUrl(String path, Map<String, dynamic>? params) {
    String enviromentUrl = _getUrl();

    if (params == null) {
      return Uri.http(enviromentUrl, path);
    } else {
      return Uri.http(enviromentUrl, path, params);
    }
  }

  String _getUrl() => "api.giphy.com";
}
