import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

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
          "Доставка",
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: context.height * 0.15,
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r), color: itemColor),
              child: ListTile(
                leading: SizedBox(
                  width: 30,
                  height: double.infinity,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset(AppIcons.truck)),
                ),
                title: const Text(
                    "Стоимость услуги доставки в течение дня по городу"),
                subtitle: Text(
                  "25 000 UZS",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            );
          }),
    );
  }
}
