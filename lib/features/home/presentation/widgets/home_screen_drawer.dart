import 'package:fsre_notifier/_all.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            BlocBuilder<TimetableDatabaseBloc, TimetableDatabaseState>(
              builder: (context, classesState) {
                return BlocBuilder<TimetableMessagingBloc,
                    TimetableMessagingState>(
                  builder: (context, messagingState) {
                    if (classesState.status.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (messagingState.status.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return ClassSelectionDropdownButton(
                      selectedStudyProgram: classesState.timetableStudyPrograms
                          .where(
                            (c) =>
                                c.id ==
                                messagingState.selectedWeekId.studyProgramId,
                          )
                          .firstOrNull,
                      studyPrograms: classesState.timetableStudyPrograms,
                      isLoading: classesState.status.isLoading ||
                          messagingState.status.isLoading,
                      error: classesState.error ?? messagingState.error,
                      onSelected: (value) {
                        context.read<TimetableMessagingBloc>().add(
                              TimetableMessagingTopicSelected(
                                messagingState.selectedWeekId.copyWith(
                                  studyProgramId: value.id,
                                ),
                              ),
                            );
                      },
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete_forever),
              iconColor: Theme.of(context).colorScheme.error,
              textColor: Theme.of(context).colorScheme.error,
              title: const Text("Delete history"),
              onTap: () {
                context.read<TimetableMessagingBloc>().add(
                      TimetableMessagingHistoryClearAllRequested(),
                    );
              },
            ),
            ListTile(
              title: Text(
                  "Switch to ${context.watch<ApiModeCubit>().state ? "production" : "debug"} server"),
              onTap: () {
                context.read<ApiModeCubit>().toggle().then((_) {
                  context.read<TimetableDatabaseBloc>().add(
                        TimetableDatabaseSubscriptionRequested(),
                      );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
