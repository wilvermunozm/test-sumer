import 'package:dartz/dartz.dart';

import '../../../../core/domain/error/faillure.dart';
import '../models/gif_model.dart';

abstract class GifRepository {
  Future<Either<Failure, List<GifModel>>> getGifs(String search);
}
