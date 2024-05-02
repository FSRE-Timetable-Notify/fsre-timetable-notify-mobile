import 'package:fsre_notifier/_all.dart';

class ClassSelectionDropdownButton extends StatelessWidget {
  const ClassSelectionDropdownButton({
    super.key,
    required this.selectedStudyProgram,
    required this.studyPrograms,
    required this.isLoading,
    required this.error,
    required this.onSelected,
  });

  final TimetableStudyProgram? selectedStudyProgram;
  final List<TimetableStudyProgram> studyPrograms;
  final bool isLoading;
  final Exception? error;
  final void Function(TimetableStudyProgram) onSelected;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<TimetableStudyProgram>(
      initialSelection: error != null ? null : selectedStudyProgram,
      width: MediaQuery.of(context).size.width * 0.8,
      expandedInsets: const EdgeInsets.all(0),
      hintText: "Search class",
      label: Text(error != null ? "Error" : "Class"),
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
      errorText: error != null ? "Error: ${error.toString()}" : null,
      menuHeight: 300,
      inputDecorationTheme: const InputDecorationTheme(
        errorMaxLines: 3,
        border: OutlineInputBorder(),
      ),
      dropdownMenuEntries: studyPrograms
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
              label: e.name,
            ),
          )
          .toList(),
      requestFocusOnTap: true,
    );
  }
}
