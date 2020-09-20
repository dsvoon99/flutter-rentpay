import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/screens/views/ManageAssets/Chat.dart';
import 'package:rent_pay/screens/views/ManageAssets/Dashboard.dart';
import 'package:rent_pay/screens/views/ManageAssets/MyAssets.dart';

class ManageAssetsScreen extends StatefulWidget {
  @override
  _ManageAssetsScreenState createState() => _ManageAssetsScreenState();
}

class _ManageAssetsScreenState extends State<ManageAssetsScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mTitle: 'My Assets',
        mIconData: _currentIndex == 1 ? Icons.add : null,
        mOnTap: _currentIndex == 1 ? ()  {
          Navigator.pushNamed(context, kAddNewAssetScreen);
        }: null,
      ),
      body: Container(
        color: _currentIndex == 2 ? Colors.white : kBodyBackgroundColor,
        child: IndexedStack(
          index: _currentIndex,
          children: [
            DashBoard(),
            MyAssets(),
            Chat(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        fixedColor: kBannerBackgroundMixTwo,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.dashboard,
            ),
            title: Text('Dashboard'),
            icon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            title: Text('My Assets'),
            icon: Icon(Icons.gradient),
          ),
          BottomNavigationBarItem(
            title: Text('Chat'),
            icon: Icon(Icons.chat),
          ),
        ],
      ),
    );
  }
}
