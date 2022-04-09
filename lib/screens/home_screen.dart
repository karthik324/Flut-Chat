import 'package:flut_chat/pages/calls_page.dart';
import 'package:flut_chat/pages/contacts_page.dart';
import 'package:flut_chat/pages/messages_page.dart';
import 'package:flut_chat/pages/notifications_page.dart';
import 'package:flut_chat/screens/screens.dart';
import 'package:flut_chat/theme/theme.dart';
import 'package:flut_chat/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flut_chat/api/app.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> pageName = ValueNotifier('Messages');

  final pages = const [
    MessagesPage(),
    NotificationsPage(),
    CallsPage(),
    ContactsPage(),
  ];

  final pagesName = const [
    'Messages',
    'Notifications',
    'Calls',
    'Contacts',
  ];

  void onNavigation(value) {
    pageName.value = pagesName[value];
    pageIndex.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: ValueListenableBuilder(
          valueListenable: pageName,
          builder: (context, String page, _) {
            return Text(
              page,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.textLigth,
                fontSize: 16,
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Hero(
              tag: 'hero-profile-picture',
              child: Avatar.small(
                url: context.currentUserImage,
                onTap: () {
                  Navigator.push(context, ProfileScreen.route);
                },
              ),
            ),
          ),
        ],
        leadingWidth: 50,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconBackground(
            icon: Icons.search,
            onTap: () {
              print('search');
            },
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottomNavBar(
        onItemSelected: onNavigation,
      ),
    );
  }
}

class _BottomNavBar extends StatefulWidget {
  _BottomNavBar({Key? key, required this.onItemSelected}) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<_BottomNavBar> {
  int selectedIndex = 0;
  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Card(
      color: brightness == Brightness.light ? Colors.transparent : null,
      elevation: 0,
      margin: EdgeInsets.zero,
      child: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BottomNavBarItem(
                icon: Icons.message,
                label: 'Messages',
                index: 0,
                onTap: handleItemSelected,
                isSelected: (selectedIndex == 0),
              ),
              _BottomNavBarItem(
                icon: Icons.notifications,
                label: 'Notifications',
                index: 1,
                onTap: handleItemSelected,
                isSelected: (selectedIndex == 1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 4),
                child: GlowingActionButton(
                  color: AppColors.secondary,
                  icon: Icons.add,
                  size: 54,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => const Dialog(
                        child: AspectRatio(
                          aspectRatio: 8 / 7,
                          child: ContactsPage(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              _BottomNavBarItem(
                icon: Icons.call_sharp,
                label: 'Calls',
                index: 2,
                onTap: handleItemSelected,
                isSelected: (selectedIndex == 2),
              ),
              _BottomNavBarItem(
                icon: Icons.contacts,
                label: 'Contacts',
                index: 3,
                onTap: handleItemSelected,
                isSelected: (selectedIndex == 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomNavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final ValueChanged<int> onTap;
  final bool isSelected;
  _BottomNavBarItem(
      {Key? key,
      required this.icon,
      required this.label,
      required this.index,
      this.isSelected = false,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 66,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppColors.secondary : null,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              label,
              style: isSelected
                  ? const TextStyle(
                      fontSize: 11,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.bold,
                    )
                  : const TextStyle(
                      fontSize: 11,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
