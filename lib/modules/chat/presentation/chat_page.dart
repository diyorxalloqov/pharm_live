import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.scaffoldback), fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIconName(color: Colors.white),
                Container(
                    height: 50.h,
                    width: 50.w,
                    padding: EdgeInsets.all(10.0.dg),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: SvgPicture.asset(AppIcons.bag)),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: context.height * 0.8.h,
            width: context.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 35.h),
                  child: Text(
                    'Поддержка',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Uri url = Uri.parse('https://t.me/pharmlive_support');
                    launchUrl(url);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    height: context.height * 0.2.h,
                    width: context.width.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: const Color(0xFF545360).withOpacity(0.1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Онлайн-чат',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5.h),
                              const SmallText(
                                  text: "Отправка вопросов через чат")
                            ],
                          ),
                        ),
                        Image.asset(AppImages.message)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final Uri uri = Uri(scheme: "tel", path: "+998917791122");
                    launchUrl(uri);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    height: context.height * 0.2.h,
                    width: context.width.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: const Color(0xFF545360).withOpacity(0.1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Позвонить нам',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5.h),
                              const SmallText(
                                  text: "Связь с оператором колл-центра")
                            ],
                          ),
                        ),
                        Image.asset(AppImages.user)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
