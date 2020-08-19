import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:mobilehealthapp/constants.dart';
//import './../components/circular_progress.dart';
import './../components/app_bar_items.dart';
import './../constants.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import './../pages/log_meals.dart';
import 'package:nnapp/pages/log_meals.dart';
import 'ml_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: CustomLeading(),
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: kAppBarTextStyle,
        ),
      ),
      drawer: DrawerItems(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: EdgeInsets.all(5.0),
              elevation: 0.3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Slider(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NutrientContentWidget(
                        nutrientName: 'Protein',
                        nutrientInGrams: '50',
                        nutrientRequired: '70',
                      ),
                      NutrientContentWidget(
                        nutrientName: 'Carbs',
                        nutrientInGrams: '30',
                        nutrientRequired: '100',
                      ),
                      NutrientContentWidget(
                        nutrientName: 'Fats',
                        nutrientInGrams: '50',
                        nutrientRequired: '20',
                      ),
                    ],
                  ),
                ],
              ),
            ),
//            Card(
//              child: Column(
//                children: [
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: [
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Icon(
//                              Icons.restaurant_menu,
//                              color: Colors.lightBlueAccent,
//                            ),
//                          ),
//                          Text('Food'),
//                        ],
//                      ),
//                      Padding(
//                        padding:
//                            const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
//                        child: RaisedButton(
//                          disabledColor: kBackgroundColour,
//                          padding: EdgeInsets.symmetric(
//                            horizontal: MediaQuery.of(context).size.width / 100,
//                          ),
//                          shape: RoundedRectangleBorder(
//                            side: BorderSide(width: 0.5),
//                            borderRadius: BorderRadius.circular(20.0),
//                          ),
//                          elevation: 0.0,
//                          color: Colors.white70,
//                          onPressed: () {
//                            //TODO: Implement Adding Food
//                          },
//                          child: Text(
//                            'Add',
//                            style: TextStyle(
//                              color: Colors.black87,
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                  Row(
//                    children: [
//                      Expanded(
//                        flex: 1,
//                        child: Row(
//                          textBaseline: TextBaseline.alphabetic,
//                          children: [
//                            Text(
//                              '2300',
//                              style: TextStyle(
//                                fontSize: 22.0,
//                                color: Colors.black38,
//                                fontWeight: FontWeight.bold,
//                              ),
//                            ),
//                            Text(
//                              ' /2500 KCal',
//                              style: TextStyle(
//                                fontSize: 12.0,
//                                color: Colors.black38,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Expanded(
//                        flex: 2,
//                        child: Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: ProgressBar(),
//                        ),
//                      ),
//                    ],
//                  ),
//                ],
//              ),
//            ),
            CustomCard(
              title: 'Add Breakfast',
              subtitle: 'Recommended 300 - 600 kCal',
              image: Image.asset('images/breakfast.png'),
            ),
            CustomCard(
              title: 'Add Morning Snack',
              subtitle: 'Recommended 300 - 400 kCal',
              image: Image.asset('images/morning_snack.png'),
            ),
            CustomCard(
              title: 'Add Lunch',
              subtitle: 'Recommended 800 - 1200 kCal',
              image: Image.asset('images/lunch.png'),
            ),
            CustomCard(
              title: 'Add Evening Snack',
              subtitle: 'Recommended 300 - 400 kCal',
              image: Image.asset('images/evening_snack.png'),
            ),
            CustomCard(
              title: 'Add Dinner',
              subtitle: 'Recommended 800 - 1200 kCal',
              image: Image.asset('images/organic_food.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomLeading extends StatelessWidget {
  const CustomLeading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Container(
          child: Icon(
            Icons.view_headline,
            color: Colors.black87,
          ),
          padding: EdgeInsets.all(7.0),
        ),
      );
    });
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget image;

  CustomCard({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1.0,
        child: Container(
          height: MediaQuery.of(context).size.height / 10,
          width: double.infinity,
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            leading: image,
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(/*fontSize: 10.0*/),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MlPage()),
                );
              },
              icon: Icon(
                Icons.add_circle,
              ),
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

class Slider extends StatefulWidget {
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
        angleRange: 360.0,
        startAngle: 90.0,
        animationEnabled: true,
        size: 150.0 / 1.2,
        customWidths: CustomSliderWidths(
          progressBarWidth: 200.0 / 24,
        ),
        infoProperties: InfoProperties(
//      mainLabelStyle: TextStyle(s),
          bottomLabelText: 'Goal',
          modifier: (double value) {
            final roundedValue = value.ceil().toInt().toString();
            return '$roundedValue kCal ';
          },
        ),
        customColors: CustomSliderColors(
          trackColor: kBackgroundColour2,
          progressBarColors: [
//        Colors.pink,
//        Colors.red,
            Color(0xFF1CDEEC),
//        Colors.lightBlueAccent,
            Colors.yellowAccent,
            Colors.tealAccent,
          ],
          gradientStartAngle: 0,
          gradientEndAngle: 360.0,
        ),
      ),
      min: 0.0,
      max: 2500.0,
      initialValue: 2300.0,
    );
  }
}

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return FAProgressBar(
      size: 15.0,
      borderRadius: 20.0,
      changeProgressColor: Colors.tealAccent,
      changeColorValue: 10,
      progressColor: Colors.black38,
      currentValue: 90,
      displayText: '%',
    );
  }
}

class NutrientContentWidget extends StatelessWidget {
  final String nutrientName;
  final String nutrientInGrams;
  final String nutrientRequired;

  NutrientContentWidget(
      {@required this.nutrientName,
      @required this.nutrientInGrams,
      @required this.nutrientRequired});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            nutrientName,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          Text(
            '$nutrientInGrams g',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '/ $nutrientRequired g',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
