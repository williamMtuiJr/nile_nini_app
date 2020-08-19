import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import './../components/app_bar_items.dart';
import './../constants.dart';
import './../pages/chat_screen.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FeedsBody1(),
    );
  }
}

// TODO: Refactor App: Insta List is redudant
class FeedsBody1 extends StatefulWidget {
  @override
  _FeedsBody1State createState() => _FeedsBody1State();
}

class _FeedsBody1State extends State<FeedsBody1> {
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
        Flexible(flex: 7, child: InstaList1()),
      ],
    );
  }
}

class InstaList1 extends StatelessWidget {
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Interests',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'see all',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kBackgroundColour2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: MediaQuery.of(context).size.height / 4,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/sex.jpeg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height / 5,
                                width: 160.0,
//                                color: Colors.red,
                              ),
                            ),
                            Text('Fertility Care'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'images/pregnancygrowth.jpeg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height / 5,
                                width: 160.0,
                                //color: Colors.blue,
                              ),
                            ),
                            Text('Pregnancy Growth'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/pregocheckup.jpeg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height / 5,
                                width: 160.0,
                                //color: Colors.blue,
                              ),
                            ),
                            Text('Pre-pregnancy checkups'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/parenting.jpeg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height / 5,
                                width: 160.0,
                                //color: Colors.greenAccent,
                              ),
                            ),
                            Text('Parental World'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/kitchentime.jpeg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height / 5,
                                width: 160.0,
                                //color: Colors.yellow,
                              ),
                            ),
                            Text('Cooking and Recipes'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/featus.jpeg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height / 5,
                                width: 160.0,
                                //color: Colors.yellow,
                              ),
                            ),
                            Text('Miscarriage Recovery'),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/breastfido.jpeg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height / 5,
                                width: 160.0,
                                //color: Colors.yellow,
                              ),
                            ),
                            Text('Breastfeeding'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              FeedTypeB(
                image: 'images/moms2be3.jpg',
              ),
              FeedTypeB(
                image: 'images/mom2be.jpg',
              ),
              FeedTypeB(
                image: 'images/moms2be2.jpg',
              ),
            ],
          );
        });
  }
}

//
class FeedTypeB extends StatelessWidget {
  String image;

  FeedTypeB({@required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatScreen()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Image.asset(
                image,
              ),
            ),
//          Container(
//            padding: EdgeInsets.all(8.0),
//            child: Text('yada yada .. continue reading'),
//          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.pinkAccent,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text('15.6k'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.comment,
                        color: Colors.black38,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text('60k'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
