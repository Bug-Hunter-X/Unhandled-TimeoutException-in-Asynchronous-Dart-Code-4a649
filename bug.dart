```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might fail
    await Future.delayed(Duration(seconds: 2));
    if (/* some condition that randomly fails */ false) {
      throw Exception('Network request failed');
    }
    // Process the data
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    // Handle timeout exceptions
    print('Timeout: $e');
  } on Exception catch (e) {
    // Handle other exceptions
    print('Error: $e');
  } catch (e) {
    // Handle any other unexpected errors
    print('Unexpected error: $e');
  } finally {
    // Clean up resources
    print('Operation finished.');
  }
}

void main() async {
  await fetchData();
}
```