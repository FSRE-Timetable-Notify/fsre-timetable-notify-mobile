import 'package:fsre_notifier/_all.dart';
import 'package:intl/intl.dart';

class _NormalizedTimetableEvent {
  const _NormalizedTimetableEvent({
    required this.isNew,
    required this.timetableEvent,
  });

  final bool isNew;
  final TimetableEvent timetableEvent;
}

class TimetableRefreshEventCard extends StatelessWidget {
  const TimetableRefreshEventCard({super.key, required this.event});

  final TimetableRefreshEvent event;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${event.newTimetableEvents.length + event.removedTimetableEvents.length} change${(event.newTimetableEvents.length + event.removedTimetableEvents.length) == 1 ? "" : "s"} detected at ${DateFormat("HH:mm").format(event.timestamp)}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Column(
                children: (event.newTimetableEvents
                            .map(
                              (newTimetableEvent) => _NormalizedTimetableEvent(
                                  isNew: true,
                                  timetableEvent: newTimetableEvent),
                            )
                            .toList() +
                        event.removedTimetableEvents
                            .map(
                              (removedTimetableEvent) =>
                                  _NormalizedTimetableEvent(
                                      isNew: false,
                                      timetableEvent: removedTimetableEvent),
                            )
                            .toList())
                    .map(
                      (normalizedTimetableEvent) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              normalizedTimetableEvent.isNew
                                  ? Icons.arrow_right
                                  : Icons.arrow_left,
                              color: normalizedTimetableEvent.isNew
                                  ? Colors.green
                                  : Colors.red,
                              size: 32,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    normalizedTimetableEvent
                                        .timetableEvent.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: normalizedTimetableEvent.isNew
                                              ? Colors.green.shade100
                                              : Colors.red.shade100,
                                        ),
                                  ),
                                  Text(
                                    "Počinje u ${DateFormat("HH:mm").format(normalizedTimetableEvent.timetableEvent.startDate)}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                          color: normalizedTimetableEvent.isNew
                                              ? Colors.green.shade50
                                              : Colors.red.shade50,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  normalizedTimetableEvent
                                      .timetableEvent.classRoomNames.first
                                      .toString(),
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
