import 'package:finance_app/app/add_item/data/add_item_data.dart';
import 'package:finance_app/core/database/boxes_names.dart';
import 'package:hive/hive.dart';

int total = 0;

final box = Hive.box<AddItem>(BoxesNames.addItemData);

//*get totla amount
int getTotalAmount() {
  var hist2 = box.values.toList();
  List amount = [0, 0];
  for (var i = 0; i < hist2.length; i++) {
    amount.add(
      hist2[i].how == "Income" ? int.parse(hist2[i].amount) : int.parse(hist2[i].amount) * -1,
    );
  }
  total = amount.reduce(
    (value, element) => value + element,
  );
  return total;
}

//*get incomeing amount
int getIncomeAmount() {
  var hist2 = box.values.toList();
  List amount = [0, 0];
  for (var i = 0; i < hist2.length; i++) {
    amount.add(
      hist2[i].how == "Income" ? int.parse(hist2[i].amount) : 0,
    );
  }
  total = amount.reduce(
    (value, element) => value + element,
  );
  return total;
}

//*get Expanded Amount
int getExpandedAmount() {
  var hist2 = box.values.toList();
  List amount = [0, 0];
  for (var i = 0; i < hist2.length; i++) {
    amount.add(
      hist2[i].how == "Income" ? 0 : int.parse(hist2[i].amount) * -1,
    );
  }
  total = amount.reduce(
    (value, element) => value + element,
  );
  return total;
}
