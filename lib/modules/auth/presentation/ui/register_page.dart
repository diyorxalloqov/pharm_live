import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController phoneController;

  @override
  void initState() {
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: context.height * 0.5,
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
                      const AppIconName()
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SpaceHeight(),
                        const HighText(text: "Подтвердите Свой\nНомер"),
                        const SpaceHeight(),
                        const SmallText(
                            text:
                                "Пожалуйста, введите свой номер телефона и получите SMS код"),
                        const SpaceHeight(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(16)),
                              hintText: 'Номер телефона'.tr()),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                fixedSize: Size(double.infinity, 55.h)),
            child: const Center(
                child: Text(
              'Отправить',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ))),
      ),
    );
  }
}
