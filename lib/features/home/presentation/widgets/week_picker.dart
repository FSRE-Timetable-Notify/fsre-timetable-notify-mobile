import 'package:fsre_notifier/_all.dart';
import 'package:intl/intl.dart';

class WeekPicker extends StatelessWidget {
  const WeekPicker({super.key, required this.selectedWeekId});

  final TimetableKey selectedWeekId;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            context.read<TimetableMessagingBloc>().add(
                  TimetableMessagingTopicWeekBackwarded(),
                );
          },
          icon: const Icon(Icons.chevron_left),
        ),
        Text(
          "${DateFormat("dd/MM").format(getStartDateOfISOWeek(selectedWeekId.yearWeek))} - ${DateFormat("dd/MM").format(getStartDateOfISOWeek(selectedWeekId.yearWeek).add(const Duration(days: DateTime.daysPerWeek - 1)))}",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        IconButton(
          onPressed: () {
            context.read<TimetableMessagingBloc>().add(
                  TimetableMessagingTopicWeekForwarded(),
                );
          },
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
