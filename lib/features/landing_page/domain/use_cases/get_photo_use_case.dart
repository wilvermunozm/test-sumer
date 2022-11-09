import 'package:dartz/dartz.dart';
import 'package:test_sumer/features/landing_page/domain/models/gift_model.dart';

import '../../../../core/error/faillure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../repository/photo_repository.dart';

class GetPhotoUseCase implements UseCase<List<GiftModel>, NoParams> {
  final PhotoRepository photoRepository;

  GetPhotoUseCase({required this.photoRepository});

  @override
  Future<Either<Failure, List<GiftModel>>> call(NoParams params) {
    return photoRepository.getPhotos();
  }
}
