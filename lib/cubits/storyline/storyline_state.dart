part of 'storyline_cubit.dart';

abstract class StorylineState extends Equatable {
  const StorylineState();

  @override
  List<Object> get props => [];
}

class StorylineInitial extends StorylineState {}

class StorylineMarriageDecision extends StorylineState {}
