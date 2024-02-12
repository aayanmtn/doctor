// ignore_for_file: must_be_immutable

part of 'inbox_attach_files_bloc.dart';

/// Represents the state of InboxAttachFiles in the application.
class InboxAttachFilesState extends Equatable {
  InboxAttachFilesState({this.inboxAttachFilesModelObj});

  InboxAttachFilesModel? inboxAttachFilesModelObj;

  @override
  List<Object?> get props => [
        inboxAttachFilesModelObj,
      ];
  InboxAttachFilesState copyWith(
      {InboxAttachFilesModel? inboxAttachFilesModelObj}) {
    return InboxAttachFilesState(
      inboxAttachFilesModelObj:
          inboxAttachFilesModelObj ?? this.inboxAttachFilesModelObj,
    );
  }
}
