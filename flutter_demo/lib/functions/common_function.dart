
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';




bool checkRegexEmail(String sEmail) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(sEmail);
}

bool checkRegexPhoneNumber(String sPhoneNumber) {
  return RegExp(r"^[0]{1}[0-9]{7,9}$").hasMatch(sPhoneNumber);
}

bool checkRegexNumber(String sPhoneNumber) {
  return RegExp(r"^[0-9\-]").hasMatch(sPhoneNumber);
}


String convertDateToStringWord(DateTime dDateTime, String sLangCode) {
  String sResult = "";
  DateTime dNow = DateTime.now();
  DateTime dAfterOneWeek =
      DateTime(dNow.year, dNow.month, dNow.day - 7, 0, 0, 0, 0);
  if (dAfterOneWeek.isBefore(dDateTime) ||
      dAfterOneWeek.isAtSameMomentAs(dDateTime)) {
    if (dDateTime.day == dNow.day) {
      sResult =
          "${tr("common.today")} ${DateFormat("HH:mm", sLangCode).format(dDateTime)}";
    } else if (dDateTime.day == (dNow.day - 1)) {
      sResult =
          "${tr("common.yesterday")} ${DateFormat("HH:mm", sLangCode).format(dDateTime)}";
    } else {
      sResult = DateFormat("EE HH:mm", sLangCode).format(dDateTime);
    }
  } else {
    if (dDateTime.year != dNow.year) {
      sResult = DateFormat("dd MMM yy HH:mm", sLangCode).format(
          sLangCode == "th"
              ? DateTime(dDateTime.year + 543, dDateTime.month, dDateTime.day,
                  dDateTime.hour, dDateTime.minute)
              : dDateTime);
    } else {
      sResult = DateFormat("dd MMM HH:mm", sLangCode).format(sLangCode == "th"
          ? DateTime(dDateTime.year + 543, dDateTime.month, dDateTime.day,
              dDateTime.hour, dDateTime.minute)
          : dDateTime);
    }
  }
  return sResult;
}

bool checkRegexPwd(String sPwd) {
  return RegExp(
          r"((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*])(?=.{13,}))")
      .hasMatch(sPwd);
}

DateTime? convertStringDateToDateTime(String? sDateFormDb) {
  if (sDateFormDb != null && sDateFormDb.isNotEmpty) {
    final arrDateAndTime = sDateFormDb.split("T");
    if (arrDateAndTime.length > 1) {
      final arrDate = arrDateAndTime[0].split("-");
      final arrTime = arrDateAndTime[1].split(":");
      DateTime dTest = DateTime(int.parse(arrDate[0]), int.parse(arrDate[1]),
          int.parse(arrDate[2]), 0, 0, 0);
      return DateTime(
          int.parse(arrDate[0]),
          int.parse(arrDate[1]),
          int.parse(arrDate[2]),
          int.parse(arrTime[0]),
          int.parse(arrTime[1]),
          int.parse(arrTime[2].substring(0, 2)));
    } else {
      final arrDate = arrDateAndTime[0].split("-");
      return DateTime(
          int.parse(arrDate[0]), int.parse(arrDate[1]), int.parse(arrDate[2]));
    }
  } else {
    return null;
  }
}

IconData mapFileTypeToIcon(String sFileType) {
  IconData result = Icons.file_present;
  switch (sFileType) {
    case "pdf":
      result = Icons.picture_as_pdf;
      break;
    case "jpg":
      result = Icons.image;
      break;
    case "jpeg":
      result = Icons.image;
      break;
    case "png":
      result = Icons.image;
      break;
    case "gif":
      result = Icons.image;
      break;
    case "doc":
      result = Icons.article;
      break;
    case "docx":
      result = Icons.article;
      break;
    case "xls":
      result = Icons.grid_on_rounded;
      break;
    case "xlsx":
      result = Icons.grid_on_rounded;
      break;
    case "rar":
      result = Icons.folder_zip_rounded;
      break;
    case "zip":
      result = Icons.folder_zip_rounded;
      break;
    default:
      break;
  }
  return result;
}


String convertTimeTo24hours(TimeOfDay tTime) {
  final hour = tTime.hour.toString().padLeft(2, "0");
  final min = tTime.minute.toString().padLeft(2, "0");
  return "$hour:$min";
}

