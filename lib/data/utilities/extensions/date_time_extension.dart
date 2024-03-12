import 'package:intl/intl.dart';

/// Extension to provide time ago functionality to [DateTime] objects.
extension DateTimeExtension on DateTime {
  /// Returns a string representation of the time
  /// elapsed since the given date time.
  ///
  /// Examples:
  ///
  /// ```
  /// final dateTime = DateTime.now().subtract(Duration(hours: 2));
  /// print(dateTime.timeAgo()); // Output: '2 hours ago'
  /// ```
  String timeAgo() {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inMinutes < 1) {
      return 'just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else {
      final format = DateFormat('dd/MM/yyyy');
      return 'on ${format.format(this)}';
    }
  }
}
