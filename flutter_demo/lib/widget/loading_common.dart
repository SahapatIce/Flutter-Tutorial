import 'package:flutter/material.dart';

void ShowLoading(BuildContext context) {
  showGeneralDialog(
    barrierDismissible: false,
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return WillPopScope(
        onWillPop: () async => false,
        child: SizedBox(
          key: const Key("Loading"),
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              width: 60,
              height: 60,
              child: const CircularProgressIndicator(
                  backgroundColor: Color(0xffd9d9d9), strokeWidth: 5),
            ),
          ),
        ),
      );
    },
  );
}

void HideLoading(BuildContext context) {
  Navigator.of(context).pop();
}
