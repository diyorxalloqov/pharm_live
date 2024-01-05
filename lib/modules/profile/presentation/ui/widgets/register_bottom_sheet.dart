import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

showBottomSheetWidget(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => const RegisterBottomSheet());
}

class RegisterBottomSheet extends StatelessWidget {
  const RegisterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .8,
      width: context.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HighText(text: "Войти"),
          SpaceHeight(height: 20.h),
          const Text("Имя*"),
          const SpaceHeight(),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Введите ваше имя',
                hintStyle: TextStyle(color: greyColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                )),
          ),
          SpaceHeight(height: 10.h),
          const Text("Фамилия*"),
          const SpaceHeight(),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Введите ваше фамилия',
                hintStyle: TextStyle(color: greyColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                )),
          ),
          SpaceHeight(height: 10.h),
          const Text("Номер телефона*"),
          const SpaceHeight(),
          TextFormField(
            keyboardType: TextInputType.phone,
            // controller: _phoneController,
            inputFormatters: [
              MaskTextInputFormatter(
                mask: '+000 00 000 00 00',
                filter: {'0': RegExp(r'[0-9]')},
              )
            ],
            decoration: InputDecoration(
                hintStyle: TextStyle(color: greyColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r)),
                hintText: 'Введите ваше Номер'.tr()),
            validator: (value) {
              if (value?.length != 17 && value!.length > 1) {
                return "Please enter real phone";
              } else if (value!.isEmpty) {
                return "Please enter phone";
              } else {
                return null;
              }
            },
          ),
          SpaceHeight(height: 16.h),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  fixedSize: Size(context.width, context.height * 0.07)),
              child: const Text(
                'Войти',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
