import 'package:booking/core/network/dio_helper.dart';
import 'package:booking/modules/auth/data/repos/login_repo.dart';
import 'package:booking/modules/auth/data/repos/register_repo.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> initGetIt() async {
  DioHelper dio = DioHelper();
  getIt.registerLazySingleton<DioHelper>(() => dio);
  //* Auth SCREENS REPOS *\\
  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepo(
      // Todo : Discuss about how to inject this
      // sl()
    ),
  );
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(
      // Todo : Discuss about how to inject this
      // sl()
    ),
  );
  //* Auth SCREENS Cubits *\\
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
