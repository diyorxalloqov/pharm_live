import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class HistoryItem extends StatelessWidget {
  final String ordernum;
  final HistoryEnum item;
  final String time;
  final String price;
  const HistoryItem(
      {super.key,
      required this.ordernum,
      required this.item,
      required this.time,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: itemColor, borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "#$ordernum",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                time,
                style: const TextStyle(
                    color: Color(0xFF98999D),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SpaceHeight(),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Способ получения: ',
                  style: TextStyle(
                    color: Color(0xFF98999D),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: item.type,
                  style: const TextStyle(
                    color: Color(0xFF32313E),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SpaceHeight(),
          Text(
            price,
            style: const TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
          ),
          const SpaceHeight(),
          Row(
            children: [
              SvgPicture.asset(item.iconPath),
              const SpaceWidth(),
              Text(
                item.title,
                style: TextStyle(color: hexToColor(item.colorHex)),
              )
            ],
          )
        ],
      ),
    );
  }
}
