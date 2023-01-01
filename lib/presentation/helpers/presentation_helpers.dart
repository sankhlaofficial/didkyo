class PresentationHelpers {
  static String formatDateTime(DateTime dateTime) {
    final String date = dateTime.day.toString();
    final String month = dateTime.month.toString();
    final String year = dateTime.year.toString();
    final String hour = dateTime.hour.toString();
    final String minute = dateTime.minute.toString();

    return '$date/$month/$year';
  }
}
