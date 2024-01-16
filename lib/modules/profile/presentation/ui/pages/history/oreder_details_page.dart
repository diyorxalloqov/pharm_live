import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class OrderDetail extends StatelessWidget {
  final HistoryEnum item;
  const OrderDetail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.maybePop(context),
            icon: SvgPicture.asset(AppIcons.cancel)),
        title: const Text('#00012'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.dg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ваш заказ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SpaceHeight(),
            Row(
              children: [
                SvgPicture.asset(item.iconPath),
                const SpaceWidth(),
                Text(
                  item.title,
                  style: TextStyle(
                    color: hexToColor(item.colorHex),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SpaceHeight(),
            Row(
              children: [
                Text('Получатель заказа:   '),
                Text(
                  'Ahror Yusupov',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SpaceHeight(),
            Row(
              children: [
                Text('Способ получения:   '),
                Text(
                  item.type,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
