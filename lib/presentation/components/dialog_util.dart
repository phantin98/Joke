import 'package:flutter/material.dart';
import 'package:joke/constants.dart';
import 'package:joke/presentation/components/widget_util.dart';
import 'package:joke/presentation/theme/app_theme.dart';

class DialogUtil {
  static bool isDialogShowing = false;
  static BuildContext? alertContext;
  static String defaultTitle = "JOKE";
  static Future<T?> alert<T>(
    BuildContext context,
    dynamic content, {
    Function? onSubmit,
    String? title,
    String? submit,
    bool? barrierDismissible,
  }) {
    isDialogShowing = true;
    return showDialog<T>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.all(0.0),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: Container(
                  alignment: FractionalOffset.topRight,
                  child: GestureDetector(
                    child: const Icon(
                      Icons.clear,
                      color: AppTheme.black2,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Center(
                  child: Text(
                title ?? defaultTitle,
                style: AppTheme.titleDialog,
              )),
            ],
          ),
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          content: content is String && content.isNotEmpty == true
              ? Text(
                  content,
                  style: AppTheme.body1,
                  textAlign: TextAlign.center,
                )
              : content,
          actionsPadding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: elevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      if (onSubmit != null) {
                        onSubmit();
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: commonPadding, horizontal: 30),
                      height: commonBtnHeight,
                      child: Center(
                        child: Text(
                          submit ?? 'Ok',
                          style: AppTheme.btnTextStyleWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
