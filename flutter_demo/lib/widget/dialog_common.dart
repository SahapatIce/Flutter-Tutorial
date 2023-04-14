import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constant/status_dialog.dart';

import 'button_common.dart';

class DialogCommon extends StatelessWidget {
  int nDialogType;
  String sMsgContent;
  Function? fHandleSubmit;
  Function? fHandleClose;
  Function? fHandleAfterClose;
  String sArgSubmit;
  String sCloseButtonTitle;
  Widget? wCustomBtn;
  Widget? wCustomContent;
  DialogCommon(
      {super.key,
      required this.nDialogType,
      required this.sMsgContent,
      this.fHandleSubmit,
      this.wCustomBtn,
      this.fHandleClose,
      this.fHandleAfterClose,
      this.wCustomContent,
      this.sCloseButtonTitle = "",
      required this.sArgSubmit});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    switch (nDialogType) {
      case DIALOG_ERROR:
        return Stack(alignment: Alignment.topCenter, children: [
          Container(
            constraints: const BoxConstraints(minWidth: 200),
            padding:
                const EdgeInsets.only(left: 20, top: 45, right: 20, bottom: 20),
            margin: const EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 5), blurRadius: 4),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  tr("common.error_title"),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                SizedBox(
                  height: sMsgContent.isNotEmpty ? 15 : 0,
                ),
                Wrap(
                  children: [
                    Text(
                      sMsgContent,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: sMsgContent.isNotEmpty ? 10 : 0,
                ),
                wCustomBtn != null
                    ? wCustomBtn!
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ButtonCommon(
                            wChild: Text(
                              sCloseButtonTitle.isEmpty
                                  ? "common.close"
                                  : sCloseButtonTitle,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            wBtnStyle: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPress: () {
                              if (fHandleClose != null) {
                                fHandleClose!();
                              }
                              Navigator.of(context).pop();
                              if (fHandleAfterClose != null) {
                                fHandleAfterClose!();
                              }
                            },
                          )
                        ],
                      ),
              ],
            ),
          ),
          const Positioned(
            left: 25,
            right: 25,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ]);
      case DIALOG_WARNING:
        return Stack(alignment: Alignment.topCenter, children: [
          Container(
            constraints: const BoxConstraints(minWidth: 200),
            padding:
                const EdgeInsets.only(left: 20, top: 45, right: 20, bottom: 20),
            margin: const EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 5), blurRadius: 4),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  tr("common.warning_title"),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                SizedBox(
                  height:
                      sMsgContent.isNotEmpty || wCustomContent != null ? 15 : 0,
                ),
                wCustomContent != null
                    ? wCustomContent!
                    : Wrap(
                        children: [
                          Text(
                            sMsgContent,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          )
                        ],
                      ),
                SizedBox(
                  height:
                      sMsgContent.isNotEmpty || wCustomContent != null ? 10 : 0,
                ),
                wCustomBtn != null
                    ? wCustomBtn!
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ButtonCommon(
                            wChild: Text(
                              sCloseButtonTitle.isEmpty
                                  ? "common.close"
                                  : sCloseButtonTitle,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            wBtnStyle: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPress: () {
                              if (fHandleClose != null) {
                                fHandleClose!();
                              }
                              Navigator.of(context).pop();
                              if (fHandleAfterClose != null) {
                                fHandleAfterClose!();
                              }
                            },
                          )
                        ],
                      ),
              ],
            ),
          ),
          const Positioned(
            left: 25,
            right: 25,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                child: Icon(
                  Icons.error_outline_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ]);
      case DIALOG_SUCCESS:
        return Stack(alignment: Alignment.topCenter, children: [
          Container(
            constraints: const BoxConstraints(minWidth: 200),
            padding:
                const EdgeInsets.only(left: 20, top: 45, right: 20, bottom: 20),
            margin: const EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 5), blurRadius: 4),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  tr("common.success_title"),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                SizedBox(
                  height:
                      sMsgContent.isNotEmpty || wCustomContent != null ? 15 : 0,
                ),
                wCustomContent != null
                    ? wCustomContent!
                    : Wrap(
                        children: [
                          Text(
                            sMsgContent,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          )
                        ],
                      ),
                SizedBox(
                  height:
                      sMsgContent.isNotEmpty || wCustomContent != null ? 10 : 0,
                ),
                wCustomBtn != null
                    ? wCustomBtn!
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ButtonCommon(
                            wChild: Text(
                              sCloseButtonTitle.isEmpty
                                  ? "common.close"
                                  : sCloseButtonTitle,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            wBtnStyle: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPress: () {
                              if (fHandleClose != null) {
                                fHandleClose!();
                              }
                              Navigator.of(context).pop();
                              if (fHandleAfterClose != null) {
                                fHandleAfterClose!();
                              }
                            },
                          )
                        ],
                      ),
              ],
            ),
          ),
          const Positioned(
            left: 25,
            right: 25,
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ]);
      case DIALOG_INFORMATION:
        return Stack(alignment: Alignment.topCenter, children: [
          Container(
            constraints: const BoxConstraints(minWidth: 200),
            padding:
                const EdgeInsets.only(left: 20, top: 45, right: 20, bottom: 20),
            margin: const EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 5), blurRadius: 4),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  tr("common.info"),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                SizedBox(
                  height:
                      sMsgContent.isNotEmpty || wCustomContent != null ? 15 : 0,
                ),
                wCustomContent != null
                    ? wCustomContent!
                    : Wrap(
                        children: [
                          Text(
                            sMsgContent,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                SizedBox(
                  height:
                      sMsgContent.isNotEmpty || wCustomContent != null ? 10 : 0,
                ),
                wCustomBtn != null
                    ? wCustomBtn!
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ButtonCommon(
                            wChild: Text(
                              sCloseButtonTitle.isEmpty
                                  ? "common.close"
                                  : sCloseButtonTitle,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            wBtnStyle: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPress: () {
                              if (fHandleClose != null) {
                                fHandleClose!();
                              }
                              Navigator.of(context).pop();
                              if (fHandleAfterClose != null) {
                                fHandleAfterClose!();
                              }
                            },
                          )
                        ],
                      ),
              ],
            ),
          ),
          const Positioned(
            left: 25,
            right: 25,
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(66, 165, 245, 1),
              radius: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                child: Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ]);
      case DIALOG_SUBMIT:
        return Stack(alignment: Alignment.topCenter, children: [
          Container(
            constraints:
                BoxConstraints(maxWidth: width >= 700 ? 400 : double.infinity),
            padding:
                const EdgeInsets.only(left: 20, top: 45, right: 20, bottom: 20),
            margin: const EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 5), blurRadius: 4),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  tr("common.submit_title", namedArgs: {
                    "word": tr(
                        sArgSubmit.isNotEmpty ? sArgSubmit : "common.save_data")
                  }),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                SizedBox(
                  height: sMsgContent.isNotEmpty ? 15 : 0,
                ),
                Wrap(
                  children: [
                    Text(
                      sMsgContent,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: sMsgContent.isNotEmpty ? 10 : 0,
                ),
                wCustomBtn != null
                    ? wCustomBtn!
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ButtonCommon(
                            wChild: Text(
                              tr("common.submit"),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            onPress: () {
                              if (fHandleSubmit != null) {
                                fHandleSubmit!();
                              } else {
                                Navigator.of(context).pop();
                              }
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ButtonCommon(
                            wChild: Text(
                              sCloseButtonTitle.isEmpty
                                  ? "common.close"
                                  : sCloseButtonTitle,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            wBtnStyle: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPress: () {
                              if (fHandleClose != null) {
                                fHandleClose!();
                              }
                              Navigator.of(context).pop();
                              if (fHandleAfterClose != null) {
                                fHandleAfterClose!();
                              }
                            },
                          )
                        ],
                      ),
              ],
            ),
          ),
          const Positioned(
            left: 25,
            right: 25,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                child: Icon(
                  Icons.question_mark_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ]);
      default:
        return SizedBox.shrink();
    }
  }
}

void ShowDialog(BuildContext context, int nDialogType, String sMsgContent,
    {Function? fHandleSubmit,
    Function? fHandleClose,
    Function? fHandleAfterClose,
    String? sArgSubmit,
    Widget? wCustomBtn,
    String? sCloseButtonTitle,
    Widget? wCustomContent,
    bool isBarrierDismissible = false}) {
  showDialog(
      context: context,
      barrierDismissible: isBarrierDismissible,
      builder: (_) {
        return WillPopScope(
          onWillPop: () async => isBarrierDismissible,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: DialogCommon(
              sArgSubmit:
                  sArgSubmit != null && sArgSubmit.isNotEmpty ? sArgSubmit : "",
              wCustomBtn: wCustomBtn,
              sMsgContent: sMsgContent,
              nDialogType: nDialogType,
              fHandleClose: fHandleClose,
              fHandleAfterClose: fHandleAfterClose,
              fHandleSubmit: fHandleSubmit,
              wCustomContent: wCustomContent,
              sCloseButtonTitle: sCloseButtonTitle ?? "",
            ),
          ),
        );
      });
}
