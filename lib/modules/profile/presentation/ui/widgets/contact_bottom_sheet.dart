import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

showContactBottomSheetWidget(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => const ContactBottomSheet());
}

class ContactBottomSheet extends StatelessWidget {
  const ContactBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .6.h,
      width: context.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MediumText(text: "Связаться с нами 24/7"),
          const SpaceHeight(),
          const SpaceHeight(),
          Item(onTap: () {}, text: "Позвонить нам", icon: AppIcons.call),
          Item(onTap: () {}, text: "Telegram", icon: AppIcons.telegram),
          Item(onTap: () {}, text: "Instagram", icon: AppIcons.instagram),
          Item(onTap: () {}, text: "Facebook", icon: AppIcons.facebook),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String icon;
  const Item(
      {super.key, required this.onTap, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      color: Colors.blueGrey[50],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: ListTile(
        onTap: onTap,
        leading: SvgPicture.asset(icon),
        title: Text(text),
      ),
    );
  }
}
