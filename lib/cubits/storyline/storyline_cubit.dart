import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'storyline_state.dart';

class StorylineCubit extends Cubit<StorylineState> {
  StorylineCubit() : super(const StorylineInitial());

  void showMarriageDecisionBox() async {
    emit(state.copyWith(showMarriageDecisionBox: true));
  }

  void hideMarriageDecisionBox() async {
    emit(state.copyWith(showMarriageDecisionBox: false));
  }

  void changeStoryline() async {
    emit(state.copyWith(continueStoryline: false));
  }

  void continueStoryline() async {
    emit(state.copyWith(continueStoryline: true));
  }
}
