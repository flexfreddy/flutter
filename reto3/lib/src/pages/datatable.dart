import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 85,
          sortColumnIndex: 2,
          sortAscending: false,
          columns: [
            DataColumn(
              label: Text("Marca"),
              numeric: false,
              onSort: (i, b) {
                setState(() {
                  carData.sort((a, b) => a.CarMake.compareTo(b.CarMake));
                });
              },
            ),
            DataColumn(
              label: Text("Modelo"),
              numeric: false,
              onSort: (i, b) {
                setState(() {
                  carData.sort((a, b) => a.Model.compareTo(b.Model));
                });
              },
            ),
            DataColumn(
              label: Text("Precio"),
              numeric: true,
              onSort: (i, b) {
                setState(() {
                  carData.sort((a, b) => a.Price.compareTo(b.Price));
                });
              },
            ),
          ],
          rows: carData
              .map(
                (x) => DataRow(
                  cells: [
                    DataCell(Text(x.CarMake)),
                    DataCell(Text(x.Model)),
                    DataCell(Text((x.Price).toString())),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class Car {
  String CarMake;
  String Model;
  double Price;

  Car(this.CarMake, this.Model, this.Price);
}

var carData = [
  Car("Honda", "2021", 35000),
  Car("Toyota", "2009", 6000),
  Car("BMW", "2022", 9000),
  Car("Suzuki", "2021", 14190),
];
