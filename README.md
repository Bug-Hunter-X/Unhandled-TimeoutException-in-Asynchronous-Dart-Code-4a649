# Unhandled TimeoutException in Asynchronous Dart Code

This repository demonstrates a common error in Dart's asynchronous programming: an unhandled `TimeoutException`.

The `bug.dart` file contains code that simulates a network request. This request might fail due to a timeout, but the original code lacks proper handling for this scenario.  This can lead to unexpected application crashes or unexpected behavior.

The `bugSolution.dart` file provides a corrected version with robust exception handling.