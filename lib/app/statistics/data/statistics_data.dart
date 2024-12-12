import 'package:finance_app/app/add_item/data/add_item_data.dart';
import 'package:finance_app/core/database/boxes_names.dart';
import 'package:hive/hive.dart';

final box = Hive.box<AddItem>(BoxesNames.addItemData);
int totals = 0;
//* get today items
List<AddItem> todayItems() {
  List<AddItem> items = [];
  var hist = box.values.toList();
  DateTime dateTime = DateTime.now();
  for (var i = 0; i < hist.length; i++) {
    if (hist[i].addDate.day == dateTime.day) {
      items.add(hist[i]);
    }
  }
  return items;
}

//* get week items
List<AddItem> weekItems() {
  List<AddItem> items = [];
  var hist = box.values.toList();
  DateTime dateTime = DateTime.now();
  for (var i = 0; i < hist.length; i++) {
    if (dateTime.day - 7 <= hist[i].addDate.day && hist[i].addDate.day <= dateTime.day) {
      items.add(hist[i]);
    }
  }
  return items;
}

//* get month items
List<AddItem> monthItems() {
  List<AddItem> items = [];
  var hist = box.values.toList();
  DateTime dateTime = DateTime.now();
  for (var i = 0; i < hist.length; i++) {
    if (hist[i].addDate.month == dateTime.month) {
      items.add(hist[i]);
    }
  }
  return items;
}

//* get year items
List<AddItem> yearItems() {
  List<AddItem> items = [];
  var hist = box.values.toList();
  DateTime dateTime = DateTime.now();
  for (var i = 0; i < hist.length; i++) {
    if (hist[i].addDate.year == dateTime.year) {
      items.add(hist[i]);
    }
  }
  return items;
}

//*get total chart
int totalChart(List<AddItem> history2) {
  List a = [0, 0];

  for (var i = 0; i < history2.length; i++) {
    a.add(history2[i].how == 'Income' ? int.parse(history2[i].amount) : int.parse(history2[i].amount) * -1);
  }
  totals = a.reduce((value, element) => value + element);
  return totals;
}

//* get time
List time(List<AddItem> history2, bool hour) {
  List<AddItem> items = [];
  List total = [];
  int counter = 0;
  for (var c = 0; c < history2.length; c++) {
    for (var i = c; i < history2.length; i++) {
      if (hour) {
        if (history2[i].addDate.hour == history2[c].addDate.hour) {
          items.add(history2[i]);
          counter = i;
        }
      } else {
        if (history2[i].addDate.day == history2[c].addDate.day) {
          items.add(history2[i]);
          counter = i;
        }
      }
    }
    total.add(totalChart(items));
    items.clear();
    c = counter;
  }
  return total;
}
