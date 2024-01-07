import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:video_player/video_player.dart';

part 'tutorial_state.dart';


@injectable
class TutorialCubit extends Cubit<TutorialState> {
  TutorialCubit() : super(const TutorialState());


  void initController() async {
    VideoPlayerController controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://edpuzzle.com/media/65702cb498952d41865a6397'));
    emit(state.copyWith(controller: controller));
    await state.controller!.initialize();


  }
}
