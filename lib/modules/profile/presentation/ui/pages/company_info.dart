import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.scaffoldback), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 60.h, bottom: 30.h, left: 20.w, right: 20.w),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          color: Colors.white)),
                  const SpaceWidth(),
                  Text(
                    "О компании",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const Center(child: AppIconName(color: Colors.white)),
            const Spacer(),
            SingleChildScrollView(
              child: Container(
                height: context.height * 0.83.h,
                width: context.width,
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r))),
                child: const SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText(text: "Аптека"),
                      SpaceHeight(),
                      Text(
                          """Широкий выбор продуктов: Мы предлагаем широкий ассортимент лекарств, витаминов и таблеток, чтобы удовлетворить разнообразные потребности наших клиентов. Независимо от того, ищете ли вы простые лекарства без рецепта или специализированные препараты, у нас вы найдете все необходимое.Удобное мобильное приложение: Наше интуитивно понятное мобильное приложение делает процесс поиска и заказа лекарств легким и удобным. Вы можете искать препараты, получать информацию о них и оформлять заказы в любое время и в любом месте.Квалифицированный персонал: Наша команда опытных фармацевтов всегда готова предоставить вам профессиональные консультации и рекомендации. Мы стремимся помочь вам сделать выбор и ответить на все ваши вопросы о лекарствах и их применении. Быстрая и надежная доставка: Мы понимаем, что получение лекарств вовремя очень важно.
Наша команда надежных курьеров оперативно доставит ваш заказ прямо к вашей двери. Мы уделяем особое внимание безопасности и конфиденциальности при доставке вашего заказа.Качество и надежность: Мы активно работаем чтобы гарантировать высокое качество наших продуктов. Все лекарства проходят строгий контроль качества, чтобы вы могли бытьуверены в их эффективности и безопасности. Пользовательский опыт: Мы стремимся сделать ваше взаимодействие с нами максимально удобным и приятным. Наш сайт и приложение имеют простой и интуитивно понятный интерфейс, что позволяет вам легко найти нужные лекарства и оформить заказ. Также, мы имеем прекрасные офисы для любителей офлайн покупок.
Мы готовы
предложить вам высокое качество продуктов и превосходное обслуживание. Доверьтесь нам в заботе о вашем здоровье и дайте нам возможность помочь вам.""")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
