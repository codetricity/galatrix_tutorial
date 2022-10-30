part of 'storyline_cubit.dart';

abstract class StorylineState extends Equatable {
  final bool marriagePath;
  const StorylineState(this.marriagePath);

  @override
  List<Object> get props => [];
}

class StorylineInitial extends StorylineState {
  const StorylineInitial() : super(false);
}

class StorylineMarriageDecision extends StorylineState {
  final bool marriageDecision;
  const StorylineMarriageDecision(this.marriageDecision)
      : super(marriageDecision);
}
