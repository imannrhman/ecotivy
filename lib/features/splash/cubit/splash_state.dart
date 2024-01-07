part of 'splash_cubit.dart';

@immutable
class SplashState extends Equatable {
  final bool moveToOtherPage;
  final bool checkFirstOpen;

  const SplashState({
    this.moveToOtherPage = false,
    this.checkFirstOpen = false,
  });

  SplashState copyWith({bool? moveToOtherPage, bool? checkFirstOpen}) =>
      SplashState(
        checkFirstOpen: checkFirstOpen ?? this.checkFirstOpen,
        moveToOtherPage: moveToOtherPage ?? this.moveToOtherPage,
      );

  @override
  List<Object?> get props => [
        moveToOtherPage,
        checkFirstOpen,
      ];
}
