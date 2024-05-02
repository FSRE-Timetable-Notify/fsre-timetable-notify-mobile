part of 'timetable_messaging_bloc.dart';

sealed class TimetableMessagingEvent extends Equatable {
  const TimetableMessagingEvent();

  @override
  List<Object> get props => [];
}

final class TimetableMessagingTopicSelected extends TimetableMessagingEvent {
  const TimetableMessagingTopicSelected(
    this.timetableKey, [
    this.isInitial = false,
    this.triggerRequest = true,
  ]);

  final TimetableKey timetableKey;
  final bool isInitial;
  final bool triggerRequest;

  @override
  List<Object> get props => [timetableKey, isInitial, triggerRequest];
}

final class TimetableMessagingKeyReadRequested
    extends TimetableMessagingEvent {}

final class TimetableMessagingTopicWeekBackwarded
    extends TimetableMessagingEvent {}

final class TimetableMessagingTopicWeekForwarded
    extends TimetableMessagingEvent {}

final class TimetableMessagingMessageReceived extends TimetableMessagingEvent {
  const TimetableMessagingMessageReceived(this.message);

  final TimetableRefreshEvent message;

  @override
  List<Object> get props => [message];
}

final class TimetableMessagingHistoryReloadRequested
    extends TimetableMessagingEvent {}

final class TimetableMessagingHistoryClearRequested
    extends TimetableMessagingEvent {}

final class TimetableMessagingHistoryClearAllRequested
    extends TimetableMessagingEvent {}
