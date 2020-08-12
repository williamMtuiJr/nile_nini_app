import 'package:flutter/material.dart';

class PlansPage extends StatefulWidget {
  static String id = '/Ninth';

  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  int itemCount = 5;
  String imageUrl;
  //TODO: Implement get Plan URL ImageURL from Firestore

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
//            Flexible(
//              fit: FlexFit.loose,
//              child: imageUrl != null
//                  ? Image.network(
//                      imageUrl,
//                      fit: BoxFit.cover,
//                    )
//                  : Image.network(
//                      "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg"),
//            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('images/book_my_call.png'),
                    fit: BoxFit.fill,
                  ),
//                  border: Border.all(
//                    color: Colors.black,
//                    width: 8,
//                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('images/balance.png'),
                    fit: BoxFit.fill,
                  ),
//                  border: Border.all(
//                    color: Colors.black,
//                    width: 8,
//                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('images/get_started.png'),
                    fit: BoxFit.fill,
                  ),
//                  border: Border.all(
//                    color: Colors.black,
//                    width: 8,
//                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    fit: BoxFit.cover,
                  ),
//                  border: Border.all(
//                    color: Colors.black,
//                    width: 8,
//                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        );
      },
    ));
  }
}
