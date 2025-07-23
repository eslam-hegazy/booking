import 'package:booking/core/utils/export_files.dart';
import 'package:booking/modules/home/presentation/screens/home_screen.dart';
import 'package:booking/modules/menu/presentation/menu_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    const Center(child: Text("Search")),
    const Center(child: Text("Profile")),
    const MenuScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: LocaleKeys.tab_home.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range_outlined),
            label: LocaleKeys.tab_myBookings.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_rounded),
            label: LocaleKeys.tab_notifications.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: LocaleKeys.tab_menu.tr(),
          ),
        ],
      ),
    );
  }
}
