import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

@injectable
class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit()
      : super(OnBoardingState(
            controller: PageController(viewportFraction: 1, keepPage: true)));

  void initController() {
    emit(state.copyWith(
      controller: PageController(viewportFraction: 1, keepPage: true),
      page: 0,
      totalPage: 3,
    ));
  }

  void jumpToPage(int pages) {

    emit(state.copyWith(page: pages));
    state.controller!.animateToPage(pages,
        duration: const Duration(milliseconds: 800),
        curve: Curves.ease);

    if ((state.page) >= state.totalPage) {
      emit(state.copyWith(
          isComplete: true
      ));
    } else {
      emit(state.copyWith(
          isComplete: false
      ));
    }

  }

  void nextPages() {


    if ((state.page) < state.totalPage) {
      int nextPages = (state.page) + 1;
      state.controller!.nextPage(
          duration: const Duration(milliseconds: 800),
          curve: Curves.ease);
      emit(state.copyWith(page: nextPages));
    } else {
      emit(state.copyWith(
        isComplete: true
      ));
    }
  }

}
