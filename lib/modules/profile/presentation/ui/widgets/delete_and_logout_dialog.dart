import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class DeleteAndLogOutDialog extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const DeleteAndLogOutDialog(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.h),
          SvgPicture.asset(AppIcons.warning),
          SizedBox(height: 10.h),
          const Text(
            "Внимание!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF98999D),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.maybePop(context);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(130.w, 52.h),
                  backgroundColor: const Color(0xFFE9F3F2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                ),
                child: const Text(
                  'Нет',
                  style: TextStyle(
                    color: Color(0xFF32313E),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    fixedSize: Size(130.w, 52.h),
                    backgroundColor: primaryColor),
                child: const Text(
                  'Да',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
