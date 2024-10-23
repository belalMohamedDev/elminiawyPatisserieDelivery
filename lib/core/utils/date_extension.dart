import 'package:intl/intl.dart';


extension DateEx on DateTime {
  String getFormatDayMonthYear() {
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(this);
  }
}

extension StringDate on String {
  String getFormattedDate() {
    DateTime parsedDate = DateTime.parse(this);
    return DateFormat('yyyy/MM/dd hh:mm a').format(parsedDate);
  }
}
