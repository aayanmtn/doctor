// ignore_for_file: must_be_immutable

part of 'inbox_attach_files_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxAttachFilesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxAttachFilesOneEvent extends Equatable {}

/// Event that is dispatched when the InboxAttachFilesOne widget is first created.
class InboxAttachFilesOneInitialEvent extends InboxAttachFilesOneEvent {
  @override
  List<Object?> get props => [];
}
