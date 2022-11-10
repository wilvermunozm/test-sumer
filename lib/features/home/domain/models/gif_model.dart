class GifModel {
  final String id;
  final String urlImage;
  final String type;
  final double height;
  final bool favorite;

  GifModel({
    required this.id,
    required this.type,
    required this.urlImage,
    required this.height,
    required this.favorite,
  });
}
