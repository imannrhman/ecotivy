part of 'on_boarding_cubit.dart';


class OnBoardingState extends Equatable {
  final PageController? controller;
  final int page;
  final int totalPage;
  final bool isComplete;

  const OnBoardingState({
    this.controller,
    this.page = 0,
    this.totalPage = 0,
    this.isComplete = false
  });

  OnBoardingState copyWith({PageController? controller, int? page, int? totalPage, bool? isComplete}) => OnBoardingState(
        controller: controller ?? this.controller,
        page: page ?? this.page,
        totalPage: totalPage ?? this.totalPage,
        isComplete: isComplete ?? this.isComplete
      );

  @override
  List<Object?> get props => [
    controller,
    page,
    totalPage,
    isComplete,
  ];
}
