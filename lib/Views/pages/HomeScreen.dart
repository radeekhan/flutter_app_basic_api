
import 'package:flutter/material.dart';
import 'package:gizantech_task1/Views/pages/DetailsScreen.dart';
import 'package:gizantech_task1/Views/widgets/ListWidget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../Controllers/HomeController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends StateMVC<HomeScreen> {

  late HomeController _con;

  _HomeScreenState() : super(HomeController()) {
    _con = controller as HomeController;
  }


  @override
  void initState() {
    _con.listenForPrayerTimeCollection();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: [
           // SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              color: Colors.tealAccent,
              child: ListView.separated(
                itemCount: _con.prayer_time_list.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListWidget(item: _con.prayer_time_list[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(thickness: 1.5, color: Colors.black,);
                },
              ),
            )
          ]
        ),
      ),
    );
  }

}
