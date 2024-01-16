import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class CashBackWidget extends StatefulWidget {
  final Color color;
  final VoidCallback onTap;
  const CashBackWidget({super.key, required this.onTap, required this.color});

  @override
  State<CashBackWidget> createState() => _CashBackWidgetState();
}

class _CashBackWidgetState extends State<CashBackWidget> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Заработано',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                Text(
                  '${isClicked ? 0 : "*****"}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Opacity(
                  opacity: 0.50,
                  child: Text(
                    '.${isClicked ? 0 : "**"} UZS',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      isClicked = !isClicked;
                      setState(() {});
                    },
                    icon: Icon(
                      isClicked ? Icons.visibility : Icons.visibility_off,
                      color: const Color(0xffFFFFFF).withOpacity(0.5),
                    )),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                ),
                SizedBox(width: 10.w)
              ],
            )
          ],
        ),
      ),
    );
  }
}
