import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

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
          "История заказов",
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
        ),
        bottom: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            splashBorderRadius: BorderRadius.circular(50.r),
            indicator: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(50.r)),
            controller: _tabController,
            tabs: const [
              Tab(text: "Все"),
              Tab(text: "Новый"),
              Tab(text: "В ожиданий"),
              Tab(text: "В доставке"),
              Tab(text: "Завершено"),
              Tab(text: "Отменнеый")
            ]),
      ),
      body: TabBarView(controller: _tabController, children: _screens),
    );
  }

  final List<Widget> _screens = const [
    AllOrder(),
    NewOrder(),
    PendingOrder(),
    DeliveryOrder(),
    FinishedOrder(),
    CanceledOrder()
  ];
}
