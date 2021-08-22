import 'package:q_food/services/firebase_services.dart';
import 'package:q_food/tabs/home_tab.dart';
import 'package:q_food/tabs/search_tab.dart';
import 'package:q_food/tensorflow.dart';
import 'package:q_food/widgets/bottom_tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName= "/Tensorflow";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseServices _firebaseServices = FirebaseServices();

  PageController _tabsPageController;
  int _selectedTab = 0;

  @override
  void initState() {
    _tabsPageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _tabsPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {



    return new Scaffold(

      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PageView(
              controller: _tabsPageController,
              onPageChanged: (num) {
                setState(() {
                  _selectedTab = num;
                });
              },
              children: [
                HomeTab(),
                SearchTab(

                ),

              ],
            ),
          ),

              Container(
                alignment: Alignment.center,
                child: ElevatedButton.icon(
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Tensorflow()
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.check_circle,
                    size: 50.0,
                  ),
                  label: Text("Head to checker"),
                ),
              ),




          BottomTabs(
            selectedTab: _selectedTab,
            tabPressed: (num) {
              _tabsPageController.animateToPage(
                  num,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic);
            },
          ),

        ],
      ),
    );
  }
}



