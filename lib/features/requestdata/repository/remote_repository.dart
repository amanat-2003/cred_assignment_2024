import 'dart:convert'; // For JSON decoding

import 'package:cred2024_amanat/features/requestdata/constant/server_constant.dart'; // Import server constants
import 'package:cred2024_amanat/features/requestdata/model/failure.dart'; // Import failure model
import 'package:cred2024_amanat/features/requestdata/model/request_data.dart'; // Import request data model
import 'package:fpdart/fpdart.dart'; // Functional programming library for Dart
import 'package:http/http.dart' as http; // HTTP client for network requests
import 'package:riverpod_annotation/riverpod_annotation.dart'; // Riverpod annotations for state management

part 'remote_repository.g.dart'; // Part directive for generated code

// Provider function to create an instance of RemoteRepository
@riverpod
RemoteRepository remoteRepository(RemoteRepositoryRef ref) {
  return RemoteRepository();
}

// Repository class to handle data fetching from remote server
class RemoteRepository {
  // Method to fetch request data from server
  Future<Either<AppFailure, RequestData>> getRequestData() async {
    try {
      // Sending HTTP GET request to the server
      final response = await http.get(
        Uri.parse(
          ServerConstant.serverURL, // Server URL from constants
        ),
        headers: {
          'Content-Type': 'application/json', // Setting content type header
        },
      );

      // Decoding JSON response body
      final resBodyMap = jsonDecode(response.body) as Map<String, dynamic>;

      // Checking if the response status is not OK (200)
      if (response.statusCode != 200) {
        // Returning failure if status code is not 200
        return Left(AppFailure(resBodyMap['error']));
      }

      // Returning the data parsed from JSON response
      return Right(RequestData.fromJson(resBodyMap));
    } catch (e) {
      // Returning failure if an exception occurs
      return Left(AppFailure(e.toString()));
    }
  }
}
