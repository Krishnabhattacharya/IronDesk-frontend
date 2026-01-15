

import 'package:irondesk/core/core.dart';



// extension TabListExtension on TabList {
//   String get label {
//     switch (this) {
//       case TabList.about:
//         return 'About';
//       case TabList.servicesAndBio:
//         return 'Services & Bio';
//       case TabList.equipment:
//         return 'Equipment';
//       case TabList.works:
//         return 'Works';
//     }
//   }
// }

/// Converts DateTime to '16th Jul' format
extension DateTimeFormatting on DateTime {
  String toDayMonthString() {
    String day = this.day.toString();
    String suffix = 'th';

    if (!(day.endsWith('11') || day.endsWith('12') || day.endsWith('13'))) {
      if (day.endsWith('1'))
        suffix = 'st';
      else if (day.endsWith('2'))
        suffix = 'nd';
      else if (day.endsWith('3'))
        suffix = 'rd';
    }

    // Month abbreviation
    String month = _monthNames[this.month - 1];

    return '$day$suffix $month';
  }

  static const List<String> _monthNames = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
}

extension DateTimeFormating on String {
  /// Converts an ISO date string (e.g. 2025-08-03T10:00:00.000Z)
  /// to "12 Jul, 2025"
  String toFormattedDate() {
    try {
      final dateTime = DateTime.parse(this).toLocal();
      return DateFormat("dd MMM, yyyy").format(dateTime);
    } catch (_) {
      return this;
    }
  }

  /// Converts an ISO date string (e.g. 2025-08-03T10:00:00.000Z)
  /// to "10.00 AM"
  String toFormattedTime() {
    try {
      final dateTime = DateTime.parse(this).toLocal();
      return DateFormat("hh.mm a").format(dateTime);
    } catch (_) {
      return this;
    }
  }
}

extension DateTimeRangeX on DateTime {
  /// Returns the difference in hours between this DateTime and [other].
  double differenceInHours(DateTime other) {
    final diff = difference(other);
    return diff.inMinutes / 60.0; // allows partial hours (e.g. 1.5 hours)
  }
}

extension StringDateTimeX on String {
  /// Parse ISO string and return DateTime
  DateTime toDateTime() => DateTime.parse(this);
}

// extension FileDownload on ApiClient {
//   /// Download a file from [url] and save it in temporary directory.
//   /// If [fileName] is not provided, it uses the last segment of the URL.
//   Future<File> downloadFile(String url, {String? fileName}) async {
//     try {
//       // get the temporary directory of device
//       final dir = await getTemporaryDirectory();
//       final name = fileName ?? Uri.parse(url).pathSegments.last;
//       final file = File("${dir.path}/$name");

//       // actually download the file
//       await dio.download(url, file.path);

//       return file;
//     } catch (e) {
//       throw ApiException("Failed to download file: $e");
//     }
//   }
// }

extension CapitalizeExtension on String? {
  String get capitalizeFirst {
    if (this == null || this!.trim().isEmpty) return "";
    final value = this!.trim();
    return value[0].toUpperCase() + value.substring(1).toLowerCase();
  }
}
