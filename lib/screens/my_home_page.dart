import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import './../components/app_bar_items.dart';
import './../constants.dart';
import 'package:nnapp/pages/chat_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        elevation: 0.5,
//        leading: Builder(builder: (BuildContext context) {
//          return GestureDetector(
//            onTap: () {
//              Scaffold.of(context).openDrawer();
//            },
//            child: Container(
//              child: Icon(
//                Icons.view_headline,
//                color: Colors.black87,
//              ),
//              padding: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
//            ),
//          );
//        }),
//        backgroundColor: Colors.white,
//        title: Center(
//          child: Text(
//            'Chats',
//            style: TextStyle(
//              color: Colors.black87,
//            ),
//          ),
//        ),
//        actions: [
//          SizedBox(
//            width: 15.0,
//          ),
//          Icon(
//            FontAwesomeIcons.questionCircle,
//            color: Colors.black87,
//          ),
//          SizedBox(
//            width: 15.0,
//          ),
//        ],
//      ),
//      drawer: DrawerItems(),
      body: FeedsBody(),
    );
  }
}

class FeedsBody extends StatefulWidget {
  @override
  _FeedsBodyState createState() => _FeedsBodyState();
}

class _FeedsBodyState extends State<FeedsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
//      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
//              ListView(scrollDirection: Axis.horizontal, children: [
//                Row(
//                  children: [
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: [
//                        Container(
//                          height: MediaQuery.of(context).size.height / 4,
//                          width: MediaQuery.of(context).size.height / 4,
//                          decoration: new BoxDecoration(
//                            shape: BoxShape.circle,
//                            image: new DecorationImage(
//                              fit: BoxFit.fill,
//                              image: AssetImage("images/chw_image.jpg"),
//                            ),
//                          ),
//                        ),
//                        SizedBox(
//                          height: 15.0,
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Text(
//                            'Sleep',
//                            style: TextStyle(
//                              color: Colors.white,
//                              fontSize: 16.0,
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: [
//                        Container(
//                          height: MediaQuery.of(context).size.height / 4,
//                          width: MediaQuery.of(context).size.height / 4,
//                          decoration: new BoxDecoration(
//                            shape: BoxShape.circle,
//                            image: new DecorationImage(
//                              fit: BoxFit.fill,
//                              image: AssetImage("images/chw_image.jpg"),
//                            ),
//                          ),
//                        ),
//                        SizedBox(
//                          height: 15.0,
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Text(
//                            'Sleep',
//                            style: TextStyle(
//                              color: Colors.white,
//                              fontSize: 16.0,
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: [
//                        Container(
//                          height: MediaQuery.of(context).size.height / 4,
//                          width: MediaQuery.of(context).size.height / 4,
//                          decoration: new BoxDecoration(
//                            shape: BoxShape.circle,
//                            image: new DecorationImage(
//                              fit: BoxFit.fill,
//                              image: AssetImage("images/chw_image.jpg"),
//                            ),
//                          ),
//                        ),
//                        SizedBox(
//                          height: 15.0,
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Text(
//                            'Sleep',
//                            style: TextStyle(
//                              color: Colors.white,
//                              fontSize: 16.0,
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ]),
            ],
          ),
        ),
        Flexible(flex: 7, child: InstaList()),
      ],
    );
  }
}

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    var deviceSize = MediaQuery.of(context).size / 2;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) /*=> index == 0*/
//          ? new SizedBox(
////        child: new InstaStories(),
//              height: deviceSize.height * 0.15,
//            )
            /*:*/ {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
//              Column(
//                children: [
////                  Row(
////                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
////                    children: [
////                      Padding(
////                        padding: const EdgeInsets.all(12.0),
////                        child: Text(
////                          'Interests',
////                          style: TextStyle(
////                            fontWeight: FontWeight.bold,
////                            fontSize: 20.0,
////                          ),
////                        ),
////                      ),
////                      Padding(
////                        padding: const EdgeInsets.all(12.0),
////                        child: GestureDetector(
////                          onTap: () {},
////                          child: Text(
////                            'see all',
////                            style: TextStyle(
////                              fontWeight: FontWeight.bold,
////                              color: kBackgroundColour2,
////                            ),
////                          ),
////                        ),
////                      ),
////                    ],
////                  ),
////                  Container(
////                    margin: EdgeInsets.symmetric(vertical: 20.0),
////                    height: MediaQuery.of(context).size.height / 4,
////                    child: ListView(
////                      scrollDirection: Axis.horizontal,
////                      children: [
////                        Column(
////                          children: [
////                            Padding(
////                              padding: const EdgeInsets.all(8.0),
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  image: DecorationImage(
////                                    image: AssetImage('images/sex.jpeg'),
////                                    fit: BoxFit.contain,
////                                  ),
////                                ),
////                                height: MediaQuery.of(context).size.height / 5,
////                                width: 160.0,
//////                                color: Colors.red,
////                              ),
////                            ),
////                            Text('Fertility Care'),
////                          ],
////                        ),
////                        Column(
////                          children: [
////                            Padding(
////                              padding: const EdgeInsets.all(8.0),
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  image: DecorationImage(
////                                    image: AssetImage(
////                                        'images/pregnancygrowth.jpeg'),
////                                    fit: BoxFit.contain,
////                                  ),
////                                ),
////                                height: MediaQuery.of(context).size.height / 5,
////                                width: 160.0,
////                                //color: Colors.blue,
////                              ),
////                            ),
////                            Text('Pregnancy Growth'),
////                          ],
////                        ),
////                        Column(
////                          children: [
////                            Padding(
////                              padding: const EdgeInsets.all(8.0),
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  image: DecorationImage(
////                                    image:
////                                        AssetImage('images/pregocheckup.jpeg'),
////                                    fit: BoxFit.contain,
////                                  ),
////                                ),
////                                height: MediaQuery.of(context).size.height / 5,
////                                width: 160.0,
////                                //color: Colors.blue,
////                              ),
////                            ),
////                            Text('Pre-pregnancy checkups'),
////                          ],
////                        ),
////                        Column(
////                          children: [
////                            Padding(
////                              padding: const EdgeInsets.all(8.0),
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  image: DecorationImage(
////                                    image: AssetImage('images/parenting.jpeg'),
////                                    fit: BoxFit.contain,
////                                  ),
////                                ),
////                                height: MediaQuery.of(context).size.height / 5,
////                                width: 160.0,
////                                //color: Colors.greenAccent,
////                              ),
////                            ),
////                            Text('Parental World'),
////                          ],
////                        ),
////                        Column(
////                          children: [
////                            Padding(
////                              padding: const EdgeInsets.all(8.0),
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  image: DecorationImage(
////                                    image:
////                                        AssetImage('images/kitchentime.jpeg'),
////                                    fit: BoxFit.contain,
////                                  ),
////                                ),
////                                height: MediaQuery.of(context).size.height / 5,
////                                width: 160.0,
////                                //color: Colors.yellow,
////                              ),
////                            ),
////                            Text('Cooking and Recipes'),
////                          ],
////                        ),
////                        Column(
////                          children: [
////                            Padding(
////                              padding: const EdgeInsets.all(8.0),
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  image: DecorationImage(
////                                    image: AssetImage('images/featus.jpeg'),
////                                    fit: BoxFit.contain,
////                                  ),
////                                ),
////                                height: MediaQuery.of(context).size.height / 5,
////                                width: 160.0,
////                                //color: Colors.yellow,
////                              ),
////                            ),
////                            Text('Miscarriage Recovery'),
////                          ],
////                        ),
////                        Column(
////                          children: [
////                            Padding(
////                              padding: const EdgeInsets.all(8.0),
////                              child: Container(
////                                decoration: BoxDecoration(
////                                  image: DecorationImage(
////                                    image: AssetImage('images/breastfido.jpeg'),
////                                    fit: BoxFit.contain,
////                                  ),
////                                ),
////                                height: MediaQuery.of(context).size.height / 5,
////                                width: 160.0,
////                                //color: Colors.yellow,
////                              ),
////                            ),
////                            Text('Breastfeeding'),
////                          ],
////                        ),
////                      ],
////                    ),
////                  ),
//                ],
//              ),
              FeedTypeB(),
            ],
          );
        });
  }
}

class FeedTypeB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Text(
                'Fertile Days?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Spartan',
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/icon.jpeg"),
            ),
            title: Text('Jane Doe, MD'),
            subtitle: Text(
                'Obstrecian, Gynaecologist, Victoria Hospital Uk, Chair of EEOSC yada yada yada yada yada yada yada'),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Image.asset("images/fertilitycare2.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('yada yada .. continue reading'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.pinkAccent,
                ),
                SizedBox(),
                Text('15.6k'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////      appBar: AppBar(
////        elevation: 0.5,
////        leading: Builder(builder: (BuildContext context) {
////          return GestureDetector(
////            onTap: () {
////              Scaffold.of(context).openDrawer();
////            },
////            child: Container(
////              child: Icon(
////                Icons.view_headline,
////                color: Colors.black87,
////              ),
////              padding: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
////            ),
////          );
////        }),
////        backgroundColor: Colors.white,
////        title: Center(
////          child: Text(
////            'Chats',
////            style: TextStyle(
////              color: Colors.black87,
////            ),
////          ),
////        ),
////        actions: [
////          SizedBox(
////            width: 15.0,
////          ),
////          Icon(
////            FontAwesomeIcons.questionCircle,
////            color: Colors.black87,
////          ),
////          SizedBox(
////            width: 15.0,
////          ),
////        ],
////      ),
////      drawer: DrawerItems(),
//      body: FeedsBody(),
//    );
//  }
//}
//
//class FeedsBody extends StatefulWidget {
//  @override
//  _FeedsBodyState createState() => _FeedsBodyState();
//}
//
//class _FeedsBodyState extends State<FeedsBody> {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
////      mainAxisSize: MainAxisSize.min,
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: [
//        Flexible(
//          flex: 1,
//          child: Column(
//            mainAxisSize: MainAxisSize.min,
//            children: [
////              ListView(scrollDirection: Axis.horizontal, children: [
////                Row(
////                  children: [
////                    Column(
////                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                      crossAxisAlignment: CrossAxisAlignment.center,
////                      children: [
////                        Container(
////                          height: MediaQuery.of(context).size.height / 4,
////                          width: MediaQuery.of(context).size.height / 4,
////                          decoration: new BoxDecoration(
////                            shape: BoxShape.circle,
////                            image: new DecorationImage(
////                              fit: BoxFit.fill,
////                              image: AssetImage("images/chw_image.jpg"),
////                            ),
////                          ),
////                        ),
////                        SizedBox(
////                          height: 15.0,
////                        ),
////                        Padding(
////                          padding: const EdgeInsets.all(8.0),
////                          child: Text(
////                            'Sleep',
////                            style: TextStyle(
////                              color: Colors.white,
////                              fontSize: 16.0,
////                            ),
////                          ),
////                        ),
////                      ],
////                    ),
////                    Column(
////                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                      crossAxisAlignment: CrossAxisAlignment.center,
////                      children: [
////                        Container(
////                          height: MediaQuery.of(context).size.height / 4,
////                          width: MediaQuery.of(context).size.height / 4,
////                          decoration: new BoxDecoration(
////                            shape: BoxShape.circle,
////                            image: new DecorationImage(
////                              fit: BoxFit.fill,
////                              image: AssetImage("images/chw_image.jpg"),
////                            ),
////                          ),
////                        ),
////                        SizedBox(
////                          height: 15.0,
////                        ),
////                        Padding(
////                          padding: const EdgeInsets.all(8.0),
////                          child: Text(
////                            'Sleep',
////                            style: TextStyle(
////                              color: Colors.white,
////                              fontSize: 16.0,
////                            ),
////                          ),
////                        ),
////                      ],
////                    ),
////                    Column(
////                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////                      crossAxisAlignment: CrossAxisAlignment.center,
////                      children: [
////                        Container(
////                          height: MediaQuery.of(context).size.height / 4,
////                          width: MediaQuery.of(context).size.height / 4,
////                          decoration: new BoxDecoration(
////                            shape: BoxShape.circle,
////                            image: new DecorationImage(
////                              fit: BoxFit.fill,
////                              image: AssetImage("images/chw_image.jpg"),
////                            ),
////                          ),
////                        ),
////                        SizedBox(
////                          height: 15.0,
////                        ),
////                        Padding(
////                          padding: const EdgeInsets.all(8.0),
////                          child: Text(
////                            'Sleep',
////                            style: TextStyle(
////                              color: Colors.white,
////                              fontSize: 16.0,
////                            ),
////                          ),
////                        ),
////                      ],
////                    ),
////                  ],
////                ),
////              ]),
//            ],
//          ),
//        ),
//        Flexible(flex: 7, child: InstaList()),
//      ],
//    );
//  }
//}
//
//class InstaList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
////    var deviceSize = MediaQuery.of(context).size / 2;
//    return ListView.builder(
//        itemCount: 5,
//        itemBuilder: (context, index) /*=> index == 0*/
////          ? new SizedBox(
//////        child: new InstaStories(),
////              height: deviceSize.height * 0.15,
////            )
//            /*:*/ {
//          return Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            mainAxisSize: MainAxisSize.min,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: <Widget>[
//              Column(
//                children: [
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: [
//                      Padding(
//                        padding: const EdgeInsets.all(12.0),
//                        child: Text(
//                          'Interests',
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 20.0,
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.all(12.0),
//                        child: GestureDetector(
//                          onTap: () {},
//                          child: Text(
//                            'see all',
//                            style: TextStyle(
//                              fontWeight: FontWeight.bold,
//                              color: kBackgroundColour2,
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                  Container(
//                    margin: EdgeInsets.symmetric(vertical: 20.0),
//                    height: MediaQuery.of(context).size.height / 4,
//                    child: ListView(
//                      scrollDirection: Axis.horizontal,
//                      children: [
//                        Column(
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                height: MediaQuery.of(context).size.height / 5,
//                                width: 160.0,
//                                color: Colors.red,
//                              ),
//                            ),
//                            Text('Sleep'),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                height: MediaQuery.of(context).size.height / 5,
//                                width: 160.0,
//                                color: Colors.blue,
//                              ),
//                            ),
//                            Text('Sleep'),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                height: MediaQuery.of(context).size.height / 5,
//                                width: 160.0,
//                                color: Colors.greenAccent,
//                              ),
//                            ),
//                            Text('Sleep'),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                height: MediaQuery.of(context).size.height / 5,
//                                width: 160.0,
//                                color: Colors.yellow,
//                              ),
//                            ),
//                            Text('Sleep'),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//              Padding(
//                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 8.0, 16.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    Row(
//                      children: <Widget>[
//                        new Container(
//                          height: 40.0,
//                          width: 40.0,
//                          decoration: new BoxDecoration(
//                            shape: BoxShape.circle,
//                            image: new DecorationImage(
//                                fit: BoxFit.fill,
//                                image: new NetworkImage(
//                                    "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
//                          ),
//                        ),
//                        new SizedBox(
//                          width: 10.0,
//                        ),
//                        new Text(
//                          "imthpk",
//                          style: TextStyle(fontWeight: FontWeight.bold),
//                        )
//                      ],
//                    ),
//                    new IconButton(
//                      icon: Icon(
//                        Icons.more_vert,
//                      ),
//                      onPressed: null,
//                    )
//                  ],
//                ),
//              ),
//              Flexible(
//                fit: FlexFit.loose,
//                child: new Image.network(
//                  "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//                  fit: BoxFit.cover,
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(16.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    new Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: <Widget>[
//                        new Icon(
//                          FontAwesomeIcons.heart,
//                        ),
//                        new SizedBox(
//                          width: 16.0,
//                        ),
//                        new Icon(
//                          FontAwesomeIcons.comment,
//                        ),
//                        new SizedBox(
//                          width: 16.0,
//                        ),
//                        new Icon(FontAwesomeIcons.paperPlane),
//                      ],
//                    ),
//                    new Icon(FontAwesomeIcons.bookmark)
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                child: Text(
//                  "Liked by pawankumar, pk and 528,331 others",
//                  style: TextStyle(fontWeight: FontWeight.bold),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    new Container(
//                      height: 40.0,
//                      width: 40.0,
//                      decoration: new BoxDecoration(
//                        shape: BoxShape.circle,
//                        image: new DecorationImage(
//                            fit: BoxFit.fill,
//                            image: new NetworkImage(
//                                "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
//                      ),
//                    ),
//                    new SizedBox(
//                      width: 10.0,
//                    ),
//                    Expanded(
//                      child: new TextField(
//                        decoration: new InputDecoration(
//                          border: InputBorder.none,
//                          hintText: "Add a comment...",
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                child: Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
//              ),
//              FeedTypeB(),
//            ],
//          );
//        });
//  }
//}
//
//class FeedTypeB extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(builder: (context) => ChatScreen()),
//        );
//      },
//      child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.start,
//          mainAxisSize: MainAxisSize.min,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: [
//            Padding(
//              padding: const EdgeInsets.all(16.0),
//              child: Container(
//                child: Text(
//                  'Why Are There So Many Fertile Days?',
//                  style: TextStyle(
//                    fontSize: 30.0,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'Spartan',
//                  ),
//                ),
//              ),
//            ),
//            ListTile(
//              leading: CircleAvatar(
//                backgroundImage: NetworkImage(
//                  "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
//                ),
//              ),
//              title: Text('John Doe, MD'),
//              subtitle: Text(
//                  'Obstrecian, Gynaecologist, Victoria Hospital Uk, Chair of EEOSC yada yada yada yada yada yada yada'),
//            ),
//            Flexible(
//              fit: FlexFit.loose,
//              child: new Image.network(
//                "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//                fit: BoxFit.cover,
//              ),
//            ),
//            Container(
//              padding: EdgeInsets.all(8.0),
//              child: Text('yada yada .. continue reading'),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Icon(
//                    FontAwesomeIcons.heart,
//                    color: Colors.pinkAccent,
//                  ),
//                  SizedBox(),
//                  Text('15.6k'),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
