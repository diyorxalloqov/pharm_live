import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class AppIconName extends StatelessWidget {
  final Color color;
  const AppIconName({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppIcons.appIcon, width: 30),
        const SpaceWidth(),
        Text(
          "Pharm Live",
          style: TextStyle(
              color: color, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
