import 'package:bloc/bloc.dart';
import 'package:ecotivy/core/constants.dart';
import 'package:ecotivy/di/get_it.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  void splashTime() async {
    // final isFirstTimeOpen = getIt<SharedPreferences>().getBool(Constants.firstTimeOpen);
    // if (isFirstTimeOpen == null || !isFirstTimeOpen) {
    //   await getIt<SharedPreferences>().setBool(Constants.firstTimeOpen, true);
    //   emit(state.copyWith(checkFirstOpen: true));
    // }
    // await Future.delayed(const Duration(seconds: 3));
    // emit(state.copyWith(moveToOtherPage: true));
  }
}
