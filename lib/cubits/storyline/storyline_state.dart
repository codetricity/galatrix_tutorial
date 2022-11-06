// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'storyline_cubit.dart';

class StorylineState extends Equatable {
  const StorylineState({
    required this.level,
    required this.showMarriageDecisionBox,
    required this.continueStoryline,
  });
  final int level;
  final bool showMarriageDecisionBox;
  final bool continueStoryline;

  @override
  List<Object> get props => [level, showMarriageDecisionBox, continueStoryline];

  StorylineState copyWith({
    int? level,
    bool? showMarriageDecisionBox,
    bool? continueStoryline,
  }) {
    return StorylineState(
      level: level ?? this.level,
      showMarriageDecisionBox:
          showMarriageDecisionBox ?? this.showMarriageDecisionBox,
      continueStoryline: continueStoryline ?? this.continueStoryline,
    );
  }

  @override
  bool get stringify => true;
}

class StorylineInitial extends StorylineState {
  const StorylineInitial()
      : super(
            level: 1, showMarriageDecisionBox: false, continueStoryline: true);
}
