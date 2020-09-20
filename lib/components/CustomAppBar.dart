import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String mTitle;
  final Function mOnTap;
  final IconData mIconData;

  CustomAppBar({this.mTitle, this.mIconData, this.mOnTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        GestureDetector(
          onTap: mOnTap,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(mIconData),
          ),
        ),
      ],
      automaticallyImplyLeading: ['My Assets', 'My Notification', 'My Account'].indexOf(mTitle) >= 0 ? true : false,
      centerTitle: true,
      title: Text(mTitle),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  kBannerBackgroundMixTwo,
                  kBannerBackgroundMixOne,
                ])
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(60.0);
}
