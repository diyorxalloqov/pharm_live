import 'package:pharm_live/core/assets/app_icons.dart';

enum HistoryEnum {
  newOrder('Самовывоз', "Новый", AppIcons.time_orange, 'FFB300'),
  pendingOrder("Курьером до двери", "В ожиданий", AppIcons.time_orange, 'FFB300'),
  deliveryOrder("Самовывоз", "В доставке", AppIcons.truck_blue, '1E88E5'),
  finishedOrder("Самовывоз", "Завершено", AppIcons.tick, '40B75B'),
  canceledOrder("Самовывоз", "Отмененный", AppIcons.time_red, 'E86F66');

  final String type;
  final String title;
  final String colorHex;
  final String iconPath;

  const HistoryEnum(this.type, this.title, this.iconPath, this.colorHex);
}
