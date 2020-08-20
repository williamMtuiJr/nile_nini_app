//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './../constants.dart';
//import './../components/app_bar_items.dart';
//import 'insights.dart';
import 'chat_groups_intro.dart';
//import 'discussions_intro.dart';
import 'my_home_page.dart';

class Insights extends StatefulWidget {
  @override
  _InsightsState createState() => _InsightsState();
}

class _InsightsState extends State<Insights>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//  bool _showAppbar = true;
//  ScrollController _scrollBottomBarController = new ScrollController();
//  bool isScrollingDown = false;
//  bool _show = true;
//  double bottomBarHeight = 75;
//  double _bottomBarOffset = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              leading: Builder(builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    child: Icon(
                      FontAwesomeIcons.bell,
                      color: Colors.black87,
                    ),
                    padding: EdgeInsets.all(7.0),
                  ),
                );
              }),
              backgroundColor: Colors.white,
              title: SizedBox(
                child: Center(
                  child: Text(
                    'Insights',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              actions: [
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  FontAwesomeIcons.questionCircle,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                labelColor: Colors.black87,
                indicatorColor: kBackgroundColour2,
                tabs: <Tab>[
                  Tab(text: "For You"),
                  Tab(text: "Courses"),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: new TabBarView(
          children: <Widget>[
            MyHomePage(),
            ChatGroups(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

//class Testing3 extends StatelessWidget {
//  Testing3({Key key}) : super(key: key);
//
//  List<Widget> discussions = [
//    Padding(
//      padding: const EdgeInsets.all(10.0),
//      child: Row(
//        children: [
//          Expanded(
//            flex: 2,
//            child: CircleAvatar(
//              radius: 30.0,
//            ),
//          ),
//          Expanded(
//            flex: 4,
//            child: Text('Your Profile'),
//          ),
//          SizedBox(),
//          Expanded(
//            flex: 1,
//            child: Column(
//              children: [
//                Text('0'),
//                Text('Posts'),
//              ],
//            ),
//          ),
//          VerticalDivider(
//            color: Colors.red,
//            thickness: 10.0,
//          ),
//          Expanded(
//            flex: 1,
//            child: Column(
//              children: [
//                Text('0'),
//                Text('Likes'),
//              ],
//            ),
//          ),
//        ],
//      ),
//    ),
//    //Load all available discussions
//    ListTile(
//      tileColor: kBackgroundColour,
//      leading: Icon(FontAwesomeIcons.venus),
//      title: Text('Is it a boy or a girl?'),
//      subtitle: Text('Yada, yada, yada, yada,yada'),
//    ),
//    ListTile(
//      tileColor: kBackgroundColour,
//      leading: Icon(FontAwesomeIcons.baby),
//      title: Text('How do i get time to sleep, arghh!'),
//      subtitle: Text('Yada, yada, yada, yada,yada yada, yada'),
//    ),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Floating App Bar';
//
//    return Scaffold(
//      drawer: DrawerItems(),
//      // No appbar provided to the Scaffold, only a body with a
//      // CustomScrollView.
//      body: TabbedAppBarSample(),
////      CustomScrollView(
////        slivers: <Widget>[
////          // Add the app bar to the CustomScrollView.
////          SliverAppBar(
////            leading: Builder(builder: (BuildContext context) {
////              return GestureDetector(
////                onTap: () {
////                  Scaffold.of(context).openDrawer();
////                },
////                child: Container(
////                  child: Icon(
////                    Icons.view_headline,
////                    color: Colors.black87,
////                  ),
////                  padding: EdgeInsets.all(7.0),
////                ),
////              );
////            }),
////            elevation: 1.0,
////            snap: false,
////            //wew
////            pinned: true,
////            // Provide a standard title.
////            title: Text(
////              title,
////              style: TextStyle(color: Colors.black87),
////            ),
////            // Allows the user to reveal the app bar if they begin scrolling
////            // back up the list of items.
////            floating: true,
////            // Display a placeholder widget to visualize the shrinking size.
//////              flexibleSpace: Placeholder(),
////            // Make the initial height of the SliverAppBar larger than normal.
////            expandedHeight: 400,
////            backgroundColor: Colors.white,
////            //bottom
//////            bottom: PreferredSize(
//////              child: Column(
//////                children: discussions,
//////              ),
//////              preferredSize: const Size.fromHeight(280.0),
//////            ),
////          ),
////          // Next, create a SliverList
////          SliverList(
////            // Use a delegate to build items as they're scrolled on screen.
////            delegate: SliverChildBuilderDelegate(
////              // The builder function returns a ListTile with a title that
////              // displays the index of the current item.
////              (context, index) => ListTile(title: Text('Item #$index')),
////              // Builds 1000 ListTiles
////              childCount: 1000,
////            ),
////          ),
////        ],
////      ),
//    );
//  }
//}
