
import 'package:appdesafio/screens/home/homePage.dart';
import 'package:flutter/material.dart';


class TelaHomeScreen extends StatefulWidget {
  @override
  _TelaHomeScreenState createState() => _TelaHomeScreenState();
}

class _TelaHomeScreenState extends State<TelaHomeScreen>
    with SingleTickerProviderStateMixin {
  TabController ? _tabController;

  List<String> categories = ['Para você', 'Popular', 'Promoções'];
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this,
        initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body:  HomePage(),
        
    );
  }
}
