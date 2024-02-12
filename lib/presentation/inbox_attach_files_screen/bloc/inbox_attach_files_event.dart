// ignore_for_file: must_be_immutable

part of 'inbox_attach_files_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxAttachFiles widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxAttachFilesEvent extends Equatable {}

/// Event that is dispatched when the InboxAttachFiles widget is first created.
class InboxAttachFilesInitialEvent extends InboxAttachFilesEvent {
  @override
  List<Object?> get props => [];
}
