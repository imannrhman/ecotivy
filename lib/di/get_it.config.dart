// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ecotivy/core/module.dart' as _i7;
import 'package:ecotivy/features/onboarding/cubit/on_boarding_cubit.dart'
    as _i3;
import 'package:ecotivy/features/splash/cubit/splash_cubit.dart' as _i5;
import 'package:ecotivy/features/tutorial/cubit/tutorial_cubit.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModule = _$CoreModule();
    gh.factory<_i3.OnBoardingCubit>(() => _i3.OnBoardingCubit());
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => coreModule.prefs,
      preResolve: true,
    );
    gh.factory<_i5.SplashCubit>(() => _i5.SplashCubit());
    gh.factory<_i6.TutorialCubit>(() => _i6.TutorialCubit());
    return this;
  }
}

class _$CoreModule extends _i7.CoreModule {}
