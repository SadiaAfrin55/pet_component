
import 'package:flutter/material.dart';

class LanguageTabbar extends StatefulWidget {
  @override
  _LanguageTabbarState createState() => _LanguageTabbarState();
}

class _LanguageTabbarState extends State<LanguageTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // context.locale.toString() == "en_US"
    //     ? _tabController.index = 1
    //     : _tabController.index = 0;
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Container(
          //padding:const EdgeInsets.symmetric(horizontal: 5),
          height: 32,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 32,
                width: 120,
                //padding:const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0XFFE1E8EF),
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TabBar(
                  onTap: (index) {
                    // if (context.locale.toString() == "en_US") {
                    //   context.locale = Locale('bn', 'BD');
                    // } else {
                    //   context.locale = Locale('en', 'US');
                    // }
                    // Navigator.pushReplacement(
                    //     context, PageTransition1(MainScreen()));
                  },
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Creates border
                    color: Color(0xFF044EA3),
                  ),
                  tabs: const [
                    Tab(
                      child: Text(
                        'বাং',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'En',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
