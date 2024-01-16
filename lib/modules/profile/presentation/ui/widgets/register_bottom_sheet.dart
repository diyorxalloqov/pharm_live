import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';
import 'package:pharm_live/modules/profile/presentation/profile/profile_bloc.dart';

showRegisterBottomSheetWidget(
    BuildContext context, ProfileBloc profileBloc, bool isRegistered) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => RegisterBottomSheet(
            isRegistered: isRegistered,
            profileBloc: profileBloc,
          ));
}

class RegisterBottomSheet extends StatefulWidget {
  final bool isRegistered;
  final ProfileBloc profileBloc;

  /// blocdan keladigan name lastname phone ni textediting ga berish kerak
  const RegisterBottomSheet(
      {super.key, required this.profileBloc, required this.isRegistered});

  @override
  State<RegisterBottomSheet> createState() => _RegisterBottomSheetState();
}

class _RegisterBottomSheetState extends State<RegisterBottomSheet> {
  late TextEditingController _nameController;
  late TextEditingController _lastNameController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    _lastNameController = TextEditingController();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .8,
      width: context.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediumText(text: "Войти".tr()),
          SpaceHeight(height: 20.h),
          const Text("Имя*"),
          const SpaceHeight(),
          TextFormField(
            controller: _nameController,
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
            controller: _lastNameController,
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
            controller: _phoneController,
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
              onPressed: () {
                widget.isRegistered
                    ? widget.profileBloc.add(ProfileEvent.profileUpdate(
                        phone: _phoneController.text,
                        firstName: _nameController.text,
                        lastName: _lastNameController.text))
                    : null;
                Navigator.maybePop(context);
              },
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
