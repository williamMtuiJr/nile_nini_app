import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
//  final Color color;
  final String text;
  final String url;

  CourseCard({
//    @required this.color,
    @required this.text,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 0.3,
//        color: color,
        margin: EdgeInsets.all(5.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.height / 4,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: url != null
                  ? NetworkImage(
                      url != null ? url : "images/chw_image.jpg",
                    )
                  : AssetImage("images/chw_image.jpg"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
