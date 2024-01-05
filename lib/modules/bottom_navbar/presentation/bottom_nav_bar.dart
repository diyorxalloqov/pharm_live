import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomePage(),
    CatalogPage(),
    ProfilePage(),
    ChatPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        shape: const CircleBorder(),
        child: Icon(
          Icons.qr_code_2,
          size: 32.sp,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 13,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomItemWidget(
                icon: AppIcons.home,
                nameColor: _currentIndex == 0 ? primaryColor : greyColor,
                name: 'Главний',
                iconColor: _currentIndex == 0 ? primaryColor : greyColor,
                ontap: () {
                  _currentIndex = 0;
                  setState(() {});
                }),
            BottomItemWidget(
                icon: AppIcons.catalog,
                nameColor: _currentIndex == 1 ? primaryColor : greyColor,
                name: 'Каталог',
                iconColor: _currentIndex == 1 ? primaryColor : greyColor,
                ontap: () {
                  _currentIndex = 1;
                  setState(() {});
                }),
            const SizedBox.shrink(),
            const SizedBox.shrink(),
            BottomItemWidget(
                icon: AppIcons.profile,
                nameColor: _currentIndex == 2 ? primaryColor : greyColor,
                name: 'Профиль',
                iconColor: _currentIndex == 2 ? primaryColor : greyColor,
                ontap: () {
                  _currentIndex = 2;
                  setState(() {});
                }),
            BottomItemWidget(
                icon: AppIcons.chat,
                nameColor: _currentIndex == 3 ? primaryColor : greyColor,
                name: 'Чат',
                iconColor: _currentIndex == 3 ? primaryColor : greyColor,
                ontap: () {
                  _currentIndex = 3;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}

class BottomItemWidget extends StatelessWidget {
  final String icon;
  final String name;
  final Color nameColor;
  final Color iconColor;
  final VoidCallback ontap;
  const BottomItemWidget(
      {super.key,
      required this.icon,
      required this.nameColor,
      required this.name,
      required this.ontap,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: ontap,
      child: Column(
        children: [
          SvgPicture.asset(icon, color: iconColor),
          const SpaceHeight(),
          Text(
            name,
            style: TextStyle(fontSize: 15.sp, color: nameColor),
          )
        ],
      ),
    );
  }
}
