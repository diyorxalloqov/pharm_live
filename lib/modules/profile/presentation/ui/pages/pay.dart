import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class PaidPage extends StatelessWidget {
  const PaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: Text(
            "Оплата",
            style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView.builder(
            itemCount: 3,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                color: itemColor,
                margin: const EdgeInsets.only(top: 16),
                child: ListTile(
                  leading: SvgPicture.asset(AppIcons.coin),
                  title: const Text("1% кэшбэк на покупки"),
                  subtitle: const Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: ' до 1 миллиона ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      TextSpan(text: "сумов")
                    ]),
                  ),
                  trailing: Text(
                    '+1%',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              );
            }));
  }
}
