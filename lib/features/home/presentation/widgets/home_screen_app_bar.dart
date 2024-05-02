import 'package:fsre_notifier/_all.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Home'),
      actions: [
        IconButton(
          onPressed: () {
            context.read<TimetableMessagingBloc>().add(
                  TimetableMessagingHistoryClearRequested(),
                );
          },
          icon: const Icon(Icons.delete_forever),
        ),
        IconButton(
          onPressed: () {
            context.read<TimetableMessagingBloc>().add(
                  TimetableMessagingHistoryReloadRequested(),
                );
          },
          icon: const Icon(Icons.refresh),
        ),
        BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return IconButton(
              icon: Icon(
                state.themeMode == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
            );
          },
        ),
      ],
    );
  }
}
