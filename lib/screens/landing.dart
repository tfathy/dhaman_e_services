import 'package:dhaman_e_services/screens/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: Material(
            color: Color(0xff670D2F),
            child: TabBar(
              tabs: [
                Tab(text: 'E-services', icon: Icon(Icons.home),),
                Tab(text: 'Notifications',icon: Icon(Icons.notifications),),
                Tab(text: 'Query' , icon: Icon(Icons.search),),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
            ),
          ),
          body: TabBarView(
            children: [TransactionsScreen(), Text('tab2'), Text('tab3')],
          ),
        ),
      ),
    );
  }
}
