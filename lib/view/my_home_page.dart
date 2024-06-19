import 'package:flutter/material.dart';
import 'package:taskui/widgets/text_widget.dart';

import '../widgets/dashboard_widget.dart';
import '../widgets/scan_receipt_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: [
            const DashBoardWidget(),
            const ScanReceiptWidget(),
            const TextWidget(
              text: 'Send & Request Page',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            const TextWidget(
              text:'Settings',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ].elementAt(_selectedIndex),
          // child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 75,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
              ),
              label: 'Scan Receipt',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_card_outlined,
                color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
              ),
              label: 'Send & Request',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_sharp,
                color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
