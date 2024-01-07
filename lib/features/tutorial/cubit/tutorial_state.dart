part of 'tutorial_cubit.dart';

@immutable
class TutorialState extends Equatable{
  final VideoPlayerController? controller;

  const TutorialState({
    this.controller
  });

  TutorialState copyWith({VideoPlayerController? controller}) => TutorialState(
    controller: controller ?? this.controller,
  );

  @override
  List<Object?> get props => [controller];

}

