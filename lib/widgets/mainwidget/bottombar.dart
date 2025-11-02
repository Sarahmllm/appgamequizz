import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const Bottombar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Découvrir',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard),
          label: 'Classement',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Amis',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
