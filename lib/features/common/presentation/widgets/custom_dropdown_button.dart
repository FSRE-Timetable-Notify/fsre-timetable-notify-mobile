import 'package:fsre_notifier/_all.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
    required this.selectedItem,
    required this.items,
    required this.onSelected,
    required this.nameExtractor,
    required this.hintText,
    required this.labelText,
    this.isLoading = false,
    this.error,
  });

  final T? selectedItem;
  final List<T> items;
  final void Function(T) onSelected;
  final String Function(T) nameExtractor;
  final String hintText;
  final String labelText;

  final bool isLoading;
  final Exception? error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownMenu<T>(
        initialSelection: error != null ? null : selectedItem,
        width: MediaQuery.of(context).size.width * 0.8,
        expandedInsets: const EdgeInsets.all(0),
        hintText: hintText,
        label: Text(
          error != null
              ? AppLocalizations.of(context)!.error(error.toString())
              : labelText,
        ),
        enableFilter: true,
        onSelected: (value) {
          if (value == null) return;

          onSelected(value);
        },
        leadingIcon: error != null
            ? Icon(
                Icons.error,
                color: Theme.of(context).colorScheme.error,
              )
            : isLoading
                ? const CircularProgressIndicator()
                : const Icon(Icons.search),
        errorText: error != null
            ? AppLocalizations.of(context)!.error(error.toString())
            : null,
        menuHeight: 300,
        inputDecorationTheme: const InputDecorationTheme(
          errorMaxLines: 3,
          border: OutlineInputBorder(),
        ),
        dropdownMenuEntries: items
            .map(
              (e) => DropdownMenuEntry(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                  ),
                ),
                value: e,
                label: nameExtractor(e),
              ),
            )
            .toList(),
        requestFocusOnTap: true,
      ),
    );
  }
}
