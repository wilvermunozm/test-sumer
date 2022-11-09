import 'package:get_it/get_it.dart';
import 'package:test_sumer/features/landing_page/presentation/cubit/gift/gif_cubit.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // CUBIT
  sl.registerFactory(() => GifCubit());
}
