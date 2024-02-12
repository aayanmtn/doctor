// ignore_for_file: must_be_immutable

part of 'inbox_bloc.dart';

/// Represents the state of Inbox in the application.
class InboxState extends Equatable {
  InboxState({
    this.searchController,
    this.inboxModelObj,
  });

  TextEditingController? searchController;

  InboxModel? inboxModelObj;

  @override
  List<Object?> get props => [
        searchController,
        inboxModelObj,
      ];
  InboxState copyWith({
    TextEditingController? searchController,
    InboxModel? inboxModelObj,
  }) {
    return InboxState(
      searchController: searchController ?? this.searchController,
      inboxModelObj: inboxModelObj ?? this.inboxModelObj,
    );
  }
}
