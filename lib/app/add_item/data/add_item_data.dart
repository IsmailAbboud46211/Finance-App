import 'package:hive_flutter/hive_flutter.dart';
part "add_item_data.g.dart";

@HiveType(typeId: 1)
class AddItem extends HiveObject {
  @HiveField(0)
  String type;
  @HiveField(1)
  String explaine;
  @HiveField(2)
  String amount;
  @HiveField(3)
  String how;
  @HiveField(4)
  DateTime addDate;
  AddItem({
    required this.type,
    required this.explaine,
    required this.amount,
    required this.how,
    required this.addDate,
  });
}
