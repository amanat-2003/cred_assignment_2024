import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_list_view_provider.g.dart';

// Riverpod provider for managing the state of list view vs grid view
@Riverpod(keepAlive: true)
class IsListView extends _$IsListView {
  // Initializes the provider with the default state, which is true (list view)
  @override
  bool build() {
    return true;
  }

  // Toggles the current state between list view and grid view
  void toggle() {
    state = !state;
  }
}
