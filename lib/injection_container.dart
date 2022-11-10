import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:test_sumer/features/home/domain/repository/gif_repository.dart';
import 'package:test_sumer/features/home/domain/use_cases/get_gifs_use_case.dart';

import 'core/providers/url_provider.dart';
import 'features/home/data/data_source/gif_data_source.dart';
import 'features/home/data/repository/gif_repository_impl.dart';
import 'features/home/presentation/cubit/gift/gif_cubit.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // CUBIT
  sl.registerFactory(() => GifCubit());

  //!Use Cases
  sl.registerLazySingleton<GetGifsUseCase>(() => GetGifsUseCase());

  //!Repository
  sl.registerLazySingleton<GifRepository>(() => GifRepositoryImpl());

  //!Data Sources
  sl.registerLazySingleton<GifRemoteDataSource>(() => GifRemoteDataSource());

  //! Core
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => UrlProvider());
}
