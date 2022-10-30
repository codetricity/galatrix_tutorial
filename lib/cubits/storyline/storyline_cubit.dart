import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'storyline_state.dart';

class StorylineCubit extends Cubit<StorylineState> {
  StorylineCubit() : super(StorylineInitial());

  void showMarriageDecisionBox() async {
    emit(StorylineMarriageDecision());
  }
}
