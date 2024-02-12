// ignore_for_file: must_be_immutable

part of 'inbox_one_bloc.dart';

/// Represents the state of InboxOne in the application.
class InboxOneState extends Equatable {
  InboxOneState({
    this.searchController,
    this.inboxOneModelObj,
  });

  TextEditingController? searchController;

  InboxOneModel? inboxOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        inboxOneModelObj,
      ];
  InboxOneState copyWith({
    TextEditingController? searchController,
    InboxOneModel? inboxOneModelObj,
  }) {
    return InboxOneState(
      searchController: searchController ?? this.searchController,
      inboxOneModelObj: inboxOneModelObj ?? this.inboxOneModelObj,
    );
  }
}
