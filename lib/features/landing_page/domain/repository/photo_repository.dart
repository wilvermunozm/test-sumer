import 'package:dartz/dartz.dart';
import 'package:test_sumer/features/landing_page/domain/models/gift_model.dart';

import '../../../../core/error/faillure.dart';

abstract class PhotoRepository {
  Future<Either<Failure, List<GiftModel>>> getPhotos();
}
