import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/card_widgets/place_card.dart';
import 'package:places/ui/widgets/navigation_bar.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({ Key? key }) : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen>  {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Избранное'),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: TabBar(
                indicator: BoxDecoration(
                    color: const Color(0xFF3B3E5B),
                    borderRadius: BorderRadius.circular(40),
                ),
                  unselectedLabelColor: const Color(0xff7c7e928f),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    height: 1.29,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: const <Tab>[
                    Tab(text: 'Хочу посетить'),
                    Tab(text: 'Посетил')
                  ]
              ),
            ),
          ),
        ),
        body: TabBarView(
          // controller: tabController,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  WantToVisitPlaceCard(sight: mocks[2]),
                  WantToVisitPlaceCard(sight: mocks[2]),
                  WantToVisitPlaceCard(sight: mocks[2]),
              ],
            )),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    AlreadyVisitPlaceCard(sight: mocks[3]),
                    AlreadyVisitPlaceCard(sight: mocks[3]),
                    AlreadyVisitPlaceCard(sight: mocks[3]),
              ],
            ),
          )],
        ),
        bottomNavigationBar: const NavigationBar(currentIndex: 2),
      ),
    );
  }
}