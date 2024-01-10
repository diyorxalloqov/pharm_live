// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

showLangBottomSheetWidget(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => const LangBottomSheet());
}

class LangBottomSheet extends StatefulWidget {
  const LangBottomSheet({Key? key}) : super(key: key);

  @override
  State<LangBottomSheet> createState() => _LangBottomSheetState();
}

class _LangBottomSheetState extends State<LangBottomSheet> {
  bool isRus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .45,
      width: context.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MediumText(text: "Выбор языка"),
          SpaceHeight(height: 25.h),
          GestureDetector(
            onTap: () {
              isRus = true;
              setState(() {});
            },
            child: Row(
              children: [
                Radio(
                    value: true,
                    groupValue: isRus,
                    onChanged: (v) {
                      isRus = v!;
                      setState(() {});
                    }),
                const SmallText(text: "Русский")
              ],
            ),
          ),
          const Divider(
            indent: 45,
            color: Colors.black12,
          ),
          GestureDetector(
            onTap: () {
              isRus = false;
              setState(() {});
            },
            child: Row(
              children: [
                Radio(
                    value: false,
                    groupValue: isRus,
                    onChanged: (v) {
                      isRus = v!;
                      setState(() {});
                    }),
                const SmallText(text: "Узбекский")
              ],
            ),
          ),
          const Divider(
            indent: 45,
            color: Colors.black12,
          ),
          SpaceHeight(height: 25.h),
          ElevatedButton(
              onPressed: () {
                print(isRus);
                isRus == true
                    ? context.setLocale(const Locale("ru"))
                    : context.setLocale(const Locale("uz"));
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  fixedSize: Size(context.width, context.height * 0.07)),
              child: const Text(
                'Сохранить',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
