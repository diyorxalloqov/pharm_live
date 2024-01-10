import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class ProfileItemWidget extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onTap;
  const ProfileItemWidget(
      {super.key, required this.onTap, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.height * .08,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
            color: const Color(0xFFF7F7F7),
            borderRadius: BorderRadius.circular(20.r)),
        child: Align(
          alignment: Alignment.center,
          child: ListTile(
            leading: Container(
              height: context.height * 0.065,
              width: context.width * 0.13,
              decoration: BoxDecoration(
                color: const Color(0x1940B75B),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Center(child: SvgPicture.asset(icon)),
            ),
            title: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF32313E),
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right_outlined),
          ),
        ),
      ),
    );
  }
}
