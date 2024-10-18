import 'package:cred2024_amanat/features/requestdata/model/request_data.dart'; // Import request data model
import 'package:riverpod_annotation/riverpod_annotation.dart'; // Riverpod annotations for state management

part 'request_data_notifier.g.dart'; // Part directive for generated code

@Riverpod(keepAlive: true) // Keep the state alive across rebuilds
class RequestDataNotifier extends _$RequestDataNotifier {
  @override
  RequestData? build() {
    // Initial state is null
    return null;
  }

  // Method to update the state with new data
  void addData(RequestData data) {
    state = data; // Set the state to the provided data
  }
}
