import 'package:reto3/src/pages/datatable.dart';
import 'package:reto3/src/pages/pages.dart';
import 'package:flutter/material.dart';

class IndexApp extends StatefulWidget {
  IndexApp({Key? key}) : super(key: key);

  @override
  State<IndexApp> createState() => _IndexAppState();
}

class _IndexAppState extends State<IndexApp> {
  int _currentIndex = 2;
  final pages = [
    const Page1(),
    const Page2(),
    const DataTablePage(),
    const Page3(),
    const Page4(),
  ];

  PreferredSizeWidget _appBarCustom = AppBar(
    title: const Text("DataTable"),
  );

  modifyAppBar(title) {
    setState(() {
      _appBarCustom = AppBar(
        title: Text(title),
      );
    });
  }

  void selectionTab(int pos) {
    switch (pos) {
      case 0:
        modifyAppBar("Persona");
        break;
      case 1:
        modifyAppBar("Balance");
        break;
      case 2:
        modifyAppBar("DataTable");
        break;
      case 3:
        modifyAppBar("Bussines");
        break;
      case 4:
        modifyAppBar("Colegio");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarCustom,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 5.0,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Persona",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "Balance",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_rows_outlined),
            label: "DataTable",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Negocio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Colegio",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            selectionTab(index);
          });
        },
      ),
    );
  }
}
