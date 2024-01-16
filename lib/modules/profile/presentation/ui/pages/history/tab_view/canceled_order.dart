import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class CanceledOrder extends StatelessWidget {
  const CanceledOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
        itemBuilder: (context, index) {
          return HistoryItem(
            ordernum: '00012',
            item: HistoryEnum.canceledOrder,
            price: '25 000 UZS',
            time: '01.02.2023/12:20',
            onTap: () {},
          );
        });
  }
}
