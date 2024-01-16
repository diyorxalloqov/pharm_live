import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';
import 'package:pharm_live/modules/global/presentation/widgets/cash_back_widget.dart';
import 'package:pharm_live/modules/profile/domain/usecase/delete_profile_use_case.dart';
import 'package:pharm_live/modules/profile/domain/usecase/logOut_use_case.dart';
import 'package:pharm_live/modules/profile/domain/usecase/profile_update_use_case.dart';
import 'package:pharm_live/modules/profile/presentation/profile/profile_bloc.dart';
import 'package:pharm_live/modules/profile/presentation/ui/widgets/delete_and_logout_dialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileBloc profileBloc;

  @override
  void initState() {
    profileBloc = ProfileBloc(
        DeleteProfileUseCase(), LogOuteUseCase(), ProfileUpdateUseCase());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: profileBloc,
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.scaffoldback),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
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
                const Spacer(),
                Container(
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
                        state.isRegister
                            ? Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                        leading: CircleAvatar(
                                          radius: 30.r,
                                          backgroundColor:
                                              scaffoldColor.withOpacity(0.6),
                                          child: Center(
                                            child: Icon(Icons.person,
                                                color: greyColor),
                                          ),
                                        ),
                                        title: Text(
                                          "hello",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25.sp),
                                        ),
                                        subtitle: Text(
                                          '933974325',
                                          style: TextStyle(color: greyColor),
                                        ),
                                        trailing: PopupMenuButton<String>(
                                          onSelected: (String value) {
                                            if (value == 'edit') {
                                              showRegisterBottomSheetWidget(
                                                  context,
                                                  profileBloc,
                                                  state.isRegister);
                                            } else if (value == 'logout') {
                                              showAdaptiveDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      DeleteAndLogOutDialog(
                                                        text:
                                                            'Вы действительно хотите выйти из профиля?',
                                                        onTap: () {
                                                          profileBloc.add(
                                                              const ProfileEvent
                                                                  .logOut());
                                                        },
                                                      ));
                                            } else if (value == 'delete') {
                                              showAdaptiveDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      DeleteAndLogOutDialog(
                                                        text:
                                                            'Вы уверены, что хотите удалить свой аккаунт?',
                                                        onTap: () {
                                                          profileBloc.add(
                                                              const ProfileEvent
                                                                  .deleteProfile());
                                                        },
                                                      ));
                                            }
                                          },
                                          itemBuilder: (BuildContext context) =>
                                              [
                                            PopupMenuItem<String>(
                                                value: 'edit',
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        AppIcons.edit),
                                                    SizedBox(width: 5.w),
                                                    const Text(
                                                      'Изменить',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                )),
                                            const PopupMenuItem<String>(
                                                value: 'delete',
                                                child: Row(
                                                  children: [
                                                    Icon(Icons
                                                        .delete_outline_rounded),
                                                    Text(
                                                      'Удалить',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                )),
                                            PopupMenuItem<String>(
                                              value: 'logout',
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      AppIcons.logOut),
                                                  SizedBox(width: 5.w),
                                                  const Text(
                                                    'Выход',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          child: const Icon(Icons.more_vert),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w, vertical: 5),
                                      child: const Text(
                                        'Кэшбэк',
                                        style: TextStyle(
                                          color: Color(0xFF32313E),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    CashBackWidget(
                                        color: primaryColor, onTap: () {})
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                        ProfileItemWidget(
                          icon: AppIcons.time,
                          text: 'История заказов',
                          onTap: () {
                            Navigator.pushNamed(context, 'orderHistory');
                          },
                        ),
                        ProfileItemWidget(
                          icon: AppIcons.truck,
                          text: 'Доставка',
                          onTap: () {
                            Navigator.pushNamed(context, 'delivery');
                          },
                        ),
                        ProfileItemWidget(
                          icon: AppIcons.box,
                          text: 'Самовывоз из аптека',
                          onTap: () {
                            Navigator.pushNamed(context, 'location');
                          },
                        ),
                        ProfileItemWidget(
                          icon: AppIcons.wallet,
                          text: 'Оплата',
                          onTap: () {
                            Navigator.pushNamed(context, 'paidPage');
                          },
                        ),
                        ProfileItemWidget(
                          icon: AppIcons.search,
                          text: 'Контакты',
                          onTap: () {
                            showContactBottomSheetWidget(context);
                          },
                        ),
                        ProfileItemWidget(
                          icon: AppIcons.info,
                          text: 'О компании',
                          onTap: () {
                            Navigator.pushNamed(context, 'CompanyInfo');
                          },
                        ),
                        ProfileItemWidget(
                          icon: AppIcons.lang,
                          text: 'Русский',
                          onTap: () {
                            showLangBottomSheetWidget(context);
                          },
                        ),
                        state.isRegister
                            ? const SizedBox(height: 10)
                            : Column(
                                children: [
                                  SpaceHeight(height: 30.h),
                                  ElevatedButton(
                                      onPressed: () {
                                        showRegisterBottomSheetWidget(context,
                                            profileBloc, state.isRegister);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: primaryColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.r)),
                                          fixedSize: Size(context.width * 0.4.w,
                                              context.height * 0.08.h)),
                                      child: Center(
                                        child: Text(
                                          'Войти',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                  SpaceHeight(height: 30.h),
                                ],
                              )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
