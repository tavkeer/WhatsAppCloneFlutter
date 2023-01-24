// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/utils/color.dart';

import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
  }) : super(key: key);
  showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: context.theme.greyColor!.withOpacity(0.4)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      splashColor: Colors.transparent,
                      splashRadius: 22,
                      iconSize: 22,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(minWidth: 40),
                      icon: const Icon(
                        Icons.close_outlined,
                        color: Coloors.greyDark,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "App Language",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: context.theme.greyColor!.withOpacity(0.4),
                thickness: 0.5,
              ),
              RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (value) {},
                activeColor: Coloors.greenDark,
                title: Text('English'),
                subtitle: Text(
                  "Phone's language",
                  style: TextStyle(color: context.theme.greyColor),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                activeColor: Coloors.greenDark,
                title: Text('Urdu'),
                subtitle: Text(
                  "India",
                  style: TextStyle(color: context.theme.greyColor),
                ),
              )
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langButtonColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langButtonHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(Icons.language, color: Coloors.greenDark),
            SizedBox(
              width: 10,
            ),
            Text(
              "English",
              style: TextStyle(color: Coloors.greenDark),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.keyboard_arrow_down, color: Coloors.greenDark)
          ]),
        ),
      ),
    );
  }
}
