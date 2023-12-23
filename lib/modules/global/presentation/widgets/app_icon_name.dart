
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class AppIconName extends StatelessWidget {
  const AppIconName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.appIcon, width: 30),
        const SpaceWidth(),
        const Text(
          "Pharm Live",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
