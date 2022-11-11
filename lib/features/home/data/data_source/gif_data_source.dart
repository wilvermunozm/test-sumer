import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/config/constants/core.dart';
import '../../../../core/domain/error/faillure.dart';
import '../../../../core/providers/url_provider.dart';
import '../../../../injection_container.dart';
import '../dto/gif_dto.dart';

abstract class GifDataSource {
  Future<List<GifDTO>> getGifs({String? searchText});
}

class GifRemoteDataSource implements GifDataSource {
  final http.Client _httpClient;
  final UrlProvider _urlProvider;

  GifRemoteDataSource({
    http.Client? httpClient,
    UrlProvider? urlProvider,
  })  : _httpClient = httpClient ?? sl(),
        _urlProvider = urlProvider ?? sl();

  @override
  Future<List<GifDTO>> getGifs({String? searchText}) async {
    String searchValue = searchText ?? "";
    String path = "trending";
    final params = {"api_key": api_key};
    Uri uri;
    if (searchValue.isNotEmpty) {
      params["q"] = searchValue;
      path = "search";
    }
    uri = _urlProvider.getUrl('/v1/gifs/$path', params);

    var response = await _httpClient.get(uri, headers: {
      'Content-type': 'application/json; charset=utf-8',
      'Accept': '*/*',
      'Access-Control-Allow-Origin': '*',
    });

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final jsonList = List.from(decodedJson["data"]);
      return jsonList.map((gifJson) => GifDTO.fromJson(gifJson)).toList();
    } else {
      throw ServerFailure('Something went wrong while requesting gif list');
    }
  }
}
