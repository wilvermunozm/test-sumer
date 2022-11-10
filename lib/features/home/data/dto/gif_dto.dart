import '../../domain/models/gif_model.dart';

class GifDTO {
  final String id;
  final String urlImage;
  final String type;
  final double height;
  final bool favorite;

  const GifDTO({
    required this.id,
    required this.type,
    required this.urlImage,
    required this.height,
    required this.favorite,
  });

  factory GifDTO.fromJson(Map<String, dynamic> gifJson) {
    return GifDTO(
      id: gifJson['id'],
      type: gifJson['type'],
      urlImage: gifJson['images']["original"]["url"],
      height: double.parse(gifJson['images']["original"]["height"]),
      favorite: false,
    );
  }
}

extension GifDTOX on GifDTO {
  GifModel toModel() {
    return GifModel(
      id: id,
      type: type,
      urlImage: urlImage,
      height: height,
      favorite: favorite,
    );
  }
}
