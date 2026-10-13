import 'package:intl/intl.dart';

extension DateTimeExtensionsX on DateTime {
  String get format {
    return DateFormat('dd MMM yyyy à HH:mm', 'fr_FR').format(this);
  }
}
