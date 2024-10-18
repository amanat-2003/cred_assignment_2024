import 'package:cred2024_amanat/features/requestdata/model/request_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'display_data_provider.g.dart';

// Riverpod provider for managing DisplayData state
@Riverpod(keepAlive: true)
class DisplayDataNotifier extends _$DisplayDataNotifier {
  // Initial state of the provider, starting as null
  @override
  DisplayData? build() {
    return null;
  }

  // Method to update the state with new DisplayData
  void addData(DisplayData data) {
    state = data;
  }
}
