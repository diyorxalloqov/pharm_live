import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class OtpPage extends StatefulWidget {
  final String phone;
  final RegisterBloc registerBloc;
  const OtpPage({super.key, required this.registerBloc, required this.phone});

  @override
  State<OtpPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<OtpPage> {
  late TextEditingController _smsController;
  final _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _smsController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _smsController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const PinTheme defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
    );

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            height: context.height * 0.5.h,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.background))),
            child: SafeArea(
              child: BlocListener<RegisterBloc, RegisterState>(
                bloc: widget.registerBloc,
                listener: (context, state) {
                  if (state.isSmsCorrect) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "bottomNavbar", (route) => false);
                  }
                },
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
                          const HighText(text: "Код подтверждения"),
                          const SpaceHeight(),
                          SmallText(
                              text:
                                  "Пожалуйста, введите код, отправленный на номер ${widget.phone}"),
                          SpaceHeight(height: 20.h),
                          Form(
                              key: _formKey,
                              child: Pinput(
                                androidSmsAutofillMethod:
                                    AndroidSmsAutofillMethod.smsUserConsentApi,
                                listenForMultipleSmsOnAndroid: true,
                                defaultPinTheme: defaultPinTheme,
                                separatorBuilder: (index) =>
                                    const SizedBox(width: 20),
                                hapticFeedbackType:
                                    HapticFeedbackType.lightImpact,
                                onChanged: (value) {
                                  debugPrint('onChanged: $value');
                                },
                                enabled: true,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                length: 5,
                                submittedPinTheme:
                                    defaultPinTheme.copyBorderWith(
                                  border: const Border(
                                      bottom: BorderSide(color: Colors.green)),
                                ),
                                controller: _smsController,
                                errorPinTheme: defaultPinTheme.copyBorderWith(
                                  border: const Border(
                                      bottom: BorderSide(color: Colors.red)),
                                ),
                                autofillHints: const [
                                  AutofillHints.oneTimeCode
                                ],
                                validator: (s) {
                                  bool isCorrect = s == _smsController.text;
                                  return isCorrect ? null : 'Pin is incorrect';
                                },
                                pinputAutovalidateMode:
                                    PinputAutovalidateMode.onSubmit,
                                showCursor: true,
                                onCompleted: (pin) async {
                                  ActionStatus.isLoading;
                                  widget.registerBloc.add(
                                      RegisterEvent.checkSms(
                                          phone: widget.phone, sms: pin));
                                },
                              )),
                        ],
                      ),
                    )
                  ],
                ),
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
              if (_formKey.currentState!.validate()) {
                widget.registerBloc.add(RegisterEvent.checkSms(
                    phone: widget.phone, sms: _smsController.text));
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                fixedSize: Size(double.infinity, 55.h)),
            child: Center(
                child: widget.registerBloc.state.status ==
                        ActionStatus.isLoading
                    ? const CircularProgressIndicator.adaptive()
                    : Text(
                        'Проверить',
                        style: TextStyle(color: Colors.white, fontSize: 17.sp),
                      ))),
      ),
    );
  }
}
