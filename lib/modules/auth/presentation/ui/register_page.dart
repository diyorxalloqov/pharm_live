import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _phoneController;
  late RegisterBloc _registerBloc;
  late GlobalKey<FormState> _key;

  @override
  void initState() {
    _phoneController = TextEditingController();
    _registerBloc = RegisterBloc(RegisterUseCase(), SmsUseCase());
    _key = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _registerBloc,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              height: context.height * 0.55.h,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(AppImages.background))),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios)),
                        const AppIconName(color: Colors.black)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SpaceHeight(),
                          const HighText(text: "Подтвердите Свой\nНомер"),
                          const SpaceHeight(),
                          const SmallText(
                              text:
                                  "Пожалуйста, введите свой номер телефона и получите SMS код"),
                          SpaceHeight(height: 20.h),
                          Form(
                            key: _key,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: _phoneController,
                              inputFormatters: [
                                MaskTextInputFormatter(
                                  mask: '+000 00 000 00 00',
                                  filter: {'0': RegExp(r'[0-9]')},
                                )
                              ],
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(16.sp)),
                                  hintText: 'Номер телефона'.tr()),
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (v) {}),
                Text('Согласен с условиями'.tr()),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Больше'.tr(),
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ))
              ],
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ElevatedButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  _registerBloc.add(RegisterEvent.register(
                      onSucces: () {},
                      phone: _phoneController.text.replaceAll(' ', '')));
                  Navigator.pushNamed(context, 'otp',
                      arguments: OtpPageArguments(
                          phone: _phoneController.text.replaceAll(' ', ''),
                          registerBloc: _registerBloc));
                  print(_phoneController.text.replaceAll(' ', ''));
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  fixedSize: Size(double.infinity, 55.h)),
              child: Center(
                  child: _registerBloc.state.status == ActionStatus.isLoading
                      ? const CircularProgressIndicator.adaptive()
                      : Text(
                          'Отправить',
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp),
                        ))),
        ),
      ),
    );
  }
}
