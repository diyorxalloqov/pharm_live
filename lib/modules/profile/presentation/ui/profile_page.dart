import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';
import 'package:pharm_live/modules/profile/presentation/ui/widgets/profile_item_widget.dart';
import 'package:pharm_live/modules/profile/presentation/ui/widgets/register_bottom_sheet.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.scaffoldback), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
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
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: SvgPicture.asset(AppIcons.bag),
                ),
              ],
            ),
          ),

          SingleChildScrollView(
            child: Container(
              height: context.height * 0.7,
              width: context.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SpaceHeight(height: 24.h),
                    ProfileItemWidget(
                      icon: AppIcons.time,
                      text: 'История заказов',
                      onTap: () {},
                    ),
                    ProfileItemWidget(
                      icon: AppIcons.truck,
                      text: 'Доставка',
                      onTap: () {},
                    ),
                    ProfileItemWidget(
                      icon: AppIcons.box,
                      text: 'Самовывоз из аптека',
                      onTap: () {},
                    ),
                    ProfileItemWidget(
                      icon: AppIcons.wallet,
                      text: 'Оплата',
                      onTap: () {},
                    ),
                    ProfileItemWidget(
                      icon: AppIcons.search,
                      text: 'Контакты',
                      onTap: () {},
                    ),
                    ProfileItemWidget(
                      icon: AppIcons.info,
                      text: 'О компании',
                      onTap: () {},
                    ),
                    ProfileItemWidget(
                      icon: AppIcons.lang,
                      text: 'Русский',
                      onTap: () {},
                    ),
                    SpaceHeight(height: 30.h),
                    ElevatedButton(
                        onPressed: () {
                          showBottomSheetWidget(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.r)),
                            fixedSize: Size(context.width * 0.4,
                                52.h)),
                        child: Center(
                          child: Text(
                            'Войти',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                    SpaceHeight(height: 30.h)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
