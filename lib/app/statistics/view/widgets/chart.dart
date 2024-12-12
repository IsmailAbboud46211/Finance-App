import 'package:finance_app/app/statistics/data/model/sales_data_model.dart';
import 'package:finance_app/app/statistics/data/statistics_data.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../add_item/data/add_item_data.dart';

class Chart extends StatefulWidget {
  final int index;
  const Chart({super.key, required this.index});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<AddItem>? items;
  bool flag = true;
  bool flag2 = true;
  @override
  Widget build(BuildContext context) {
    switch (widget.index) {
      case 0:
        items = todayItems();
        flag = true;
        flag2 = true;
        break;
      case 1:
        items = weekItems();
        flag = false;
        flag2 = true;
        break;
      case 2:
        items = monthItems();
        flag = false;
        flag2 = true;
        break;
      case 3:
        items = yearItems();
        flag2 = false;
        break;
      default:
    }
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: const CategoryAxis(),
        series: <SplineSeries<SalesDataModel, String>>[
          SplineSeries<SalesDataModel, String>(
            color: AppColors.primaryColor,
            width: 3,
            dataSource: <SalesDataModel>[
              //* fake data
              SalesDataModel(sales: 100, year: "mon"),
              SalesDataModel(sales: 20, year: "Tue"),
              SalesDataModel(sales: 40, year: "Wen"),
              SalesDataModel(sales: 15, year: "Sat"),
              SalesDataModel(sales: 5, year: "Sun"),
            ],
            xValueMapper: (SalesDataModel sales, _) => sales.year,
            yValueMapper: (SalesDataModel sales, _) => sales.sales,
          )
        ],
      ),
    );
  }
}
