import 'package:cred2024_amanat/features/requestdata/model/request_data.dart'; // Importing RequestData model
import 'package:cred2024_amanat/features/requestdata/provider/request_data_notifier.dart'; // Importing RequestDataNotifier
import 'package:cred2024_amanat/features/requestdata/repository/remote_repository.dart'; // Importing repository for remote data fetch
import 'package:riverpod_annotation/riverpod_annotation.dart'; // Riverpod annotations for state management

part 'requestdata_viewmodel.g.dart'; // Part directive for generated code

@riverpod
class RequestDataViewModel extends _$RequestDataViewModel {
  late RemoteRepository
      _remoteRepository; // Repository instance to fetch data from API
  late RequestDataNotifier
      _requestDataNotifier; // Notifier instance to update request data

  @override
  AsyncValue<RequestData>? build() {
    // Initializing repository and notifier from providers
    _remoteRepository = ref.watch(remoteRepositoryProvider);
    _requestDataNotifier = ref.watch(requestDataNotifierProvider.notifier);
    return null; // No initial state value
  }

  // Method to fetch data asynchronously
  Future<void> getData() async {
    state = const AsyncValue
        .loading(); // Setting state to loading during data fetch

    // Fetching data from the remote repository
    final res = await _remoteRepository.getRequestData();

    // Handling the response based on success or error
    res.fold(
      (error) {
        // Set state to error if data fetch fails
        state = AsyncValue.error(error.message, StackTrace.current);
        return null;
      },
      (data) {
        // Set state to success if data fetch is successful
        state = _getDataSuccess(data);
      },
    );
  }

  // Helper method to update state on successful data fetch
  AsyncValue<RequestData> _getDataSuccess(RequestData data) {
    _requestDataNotifier.addData(data); // Add the fetched data to the notifier
    return state = AsyncValue.data(data); // Update state with the data
  }
}
