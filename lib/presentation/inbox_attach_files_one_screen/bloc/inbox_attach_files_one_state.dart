// ignore_for_file: must_be_immutable

part of 'inbox_attach_files_one_bloc.dart';

/// Represents the state of InboxAttachFilesOne in the application.
class InboxAttachFilesOneState extends Equatable {
  InboxAttachFilesOneState({this.inboxAttachFilesOneModelObj});

  InboxAttachFilesOneModel? inboxAttachFilesOneModelObj;

  @override
  List<Object?> get props => [
        inboxAttachFilesOneModelObj,
      ];
  InboxAttachFilesOneState copyWith(
      {InboxAttachFilesOneModel? inboxAttachFilesOneModelObj}) {
    return InboxAttachFilesOneState(
      inboxAttachFilesOneModelObj:
          inboxAttachFilesOneModelObj ?? this.inboxAttachFilesOneModelObj,
    );
  }
}
