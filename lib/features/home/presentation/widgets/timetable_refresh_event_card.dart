import 'package:fsre_notifier/_all.dart';

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
              AppLocalizations.of(context)!.timetableRefreshEventDetected(
                event.newTimetableEvents.length +
                    event.removedTimetableEvents.length,
                event.timestamp,
              ),
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
                                    AppLocalizations.of(context)!.weekDay(
                                      "${normalizedTimetableEvent.timetableEvent.startDate.weekday - 1}",
                                    ),
                                  ),
                                  Text(
                                    normalizedTimetableEvent
                                        .timetableEvent.name,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .timetableEventStartsAt(
                                      normalizedTimetableEvent
                                          .timetableEvent.startDate,
                                    ),
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
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
