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

                    return CustomDropdownButton<TimetableStudyProgram>(
                      selectedItem: classesState.timetableStudyPrograms
                          .where(
                            (c) =>
                                c.id ==
                                messagingState.selectedWeekId.studyProgramId,
                          )
                          .firstOrNull,
                      items: classesState.timetableStudyPrograms,
                      onSelected: (value) {
                        context.read<TimetableMessagingBloc>().add(
                              TimetableMessagingTopicSelected(
                                messagingState.selectedWeekId.copyWith(
                                  studyProgramId: value.id,
                                ),
                              ),
                            );
                      },
                      nameExtractor: (c) => c.name,
                      hintText:
                          AppLocalizations.of(context)!.searchStudyPrograms,
                      labelText:
                          AppLocalizations.of(context)!.selectStudyProgram,
                      isLoading: classesState.status.isLoading ||
                          messagingState.status.isLoading,
                      error: classesState.error ?? messagingState.error,
                    );
                  },
                );
              },
            ),
            CustomDropdownButton<Locale>(
              selectedItem: AppLocalizations.supportedLocales
                  .where(
                    (c) =>
                        c.toLanguageTag() ==
                        context
                            .watch<LocaleCubit>()
                            .state
                            .locale
                            .toLanguageTag(),
                  )
                  .firstOrNull,
              items: AppLocalizations.supportedLocales,
              onSelected: (value) {
                context.read<LocaleCubit>().setLocale(
                      value,
                    );
              },
              nameExtractor: (c) =>
                  AppLocalizations.of(context)!.language(c.toLanguageTag()),
              hintText: AppLocalizations.of(context)!.searchLanguages,
              labelText: AppLocalizations.of(context)!.selectLanguage,
            ),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: Text(
                AppLocalizations.of(context)!.switchServer(
                  context.watch<ApiModeCubit>().state ? "production" : "debug",
                ),
              ),
              onTap: () {
                context.read<ApiModeCubit>().toggle().then((_) {
                  context.read<TimetableDatabaseBloc>().add(
                        TimetableDatabaseSubscriptionRequested(),
                      );
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete_forever),
              iconColor: Theme.of(context).colorScheme.error,
              textColor: Theme.of(context).colorScheme.error,
              title: Text(AppLocalizations.of(context)!.deleteHistory),
              onTap: () {
                context.read<TimetableMessagingBloc>().add(
                      TimetableMessagingHistoryClearAllRequested(),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
