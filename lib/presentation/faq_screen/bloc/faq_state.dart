// ignore_for_file: must_be_immutable

part of 'faq_bloc.dart';

/// Represents the state of Faq in the application.
class FaqState extends Equatable {
  FaqState({this.faqModelObj});

  FaqModel? faqModelObj;

  @override
  List<Object?> get props => [
        faqModelObj,
      ];
  FaqState copyWith({FaqModel? faqModelObj}) {
    return FaqState(
      faqModelObj: faqModelObj ?? this.faqModelObj,
    );
  }
}
