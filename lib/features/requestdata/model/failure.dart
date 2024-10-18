// ignore_for_file: public_member_api_docs, sort_constructors_first

// Class to represent application-specific errors
class AppFailure {
  final String message; // Error message to describe the failure

  // Constructor with optional error message, defaulting to a generic message
  AppFailure([this.message = 'Sorry, an unexpected error occurred!']);

  @override
  // Override toString to provide a string representation of the error
  String toString() => 'AppFailure(message: $message)';
}
