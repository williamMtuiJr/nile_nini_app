import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedTypeB extends StatefulWidget {
  final String author;
  final String authorImageUrl;
  final String imageUrl;
  final String authorDescription;
  final String postTitle;
  final String article;
  final double postLikes;

  const FeedTypeB({
    this.author,
    this.authorImageUrl,
    this.imageUrl,
    this.authorDescription,
    this.postTitle,
    this.article,
    this.postLikes,
  });

  @override
  _FeedTypeBState createState() => _FeedTypeBState();
}

class _FeedTypeBState extends State<FeedTypeB> {
  Color _likeButtonColor = Colors.pinkAccent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Post Title
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Text(
                widget.postTitle,
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Spartan',
                ),
              ),
            ),
          ),

          //Post Author & Description
          ListTile(
            leading: CircleAvatar(
              backgroundImage: widget.authorImageUrl != null
                  ? NetworkImage(
                      widget.authorImageUrl,
                    )
                  : Image.asset('images/chw_image.jpg'),
            ),
            title: Text(widget.author),
            subtitle: widget.authorDescription.length < 60
                ? Text(
                    widget.authorDescription,
                  )
                : GestureDetector(
                    onTap: () {
                      //TODO: Implement navigate to article view page
                    },
                    child: Text(
                      widget.authorDescription.substring(0, 59) +
                          'continue reading',

                      //TODO: Make continue reading text different colour
                    ),
                  ),
          ),

          //Post Image
          Flexible(
            fit: FlexFit.loose,
            child: widget.imageUrl != null
                ? Image.network(widget.imageUrl)
                : Image.network(
                    "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    fit: BoxFit.cover,
                  ),
          ),

          //Post Texts
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text(widget.article),
          ),

          // Interaction Buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.heart,
                    color: _likeButtonColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _likeButtonColor = Colors.black;

                      //TODO: add like to database or remove like
                    });
                  },
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(widget.postLikes.toString()),
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.share,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      //TODO: Implement what happens when on presses share
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
