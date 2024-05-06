import 'package:fsre_notifier/_all.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  static const route = "/home";
  final firebaseRepository = getIt<FirebaseRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(),
      drawer: const HomeScreenDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: StreamBuilder<NotificationSettings>(
          stream: firebaseRepository.firebaseMessaging
              .requestPermission()
              .asStream(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(
                AppLocalizations.of(context)!
                    .notificationPermissionsRequestFailed,
              );
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.data?.authorizationStatus !=
                AuthorizationStatus.authorized) {
              return ElevatedButton(
                onPressed: () {
                  firebaseRepository.firebaseMessaging.requestPermission();
                },
                child: Text(
                  AppLocalizations.of(context)!.allowNotificationPermissions,
                ),
              );
            }

            return BlocBuilder<TimetableMessagingBloc, TimetableMessagingState>(
              builder: (context, timetableMessagingState) {
                if (timetableMessagingState.status.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                return Column(
                  children: [
                    WeekPicker(
                      selectedWeekId: timetableMessagingState.selectedWeekId,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      AppLocalizations.of(context)!.notificationHistory,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 16),
                    if (timetableMessagingState.status.isFailure)
                      Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.error(
                              timetableMessagingState.error.toString(),
                            ),
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    if (timetableMessagingState.eventHistory.isEmpty)
                      Text(
                        AppLocalizations.of(context)!.noNotifications,
                      )
                    else
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: timetableMessagingState.forThisWeek.length,
                          itemBuilder: (context, index) {
                            final event =
                                timetableMessagingState.forThisWeek[index];

                            return TimetableRefreshEventCard(
                              event: event,
                            );
                          },
                        ),
                      ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
