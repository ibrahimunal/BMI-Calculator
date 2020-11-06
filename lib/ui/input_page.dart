import 'package:bmi/ui/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/ui/result_page.dart';

const Color currentColor = Color(0xFF1D1F33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color inactiveContainerColor = Color(0xFF36436d);

  Color maleCardColor = currentColor;
  Color femaleCardColor = currentColor;
  static int height = 180;
  static int weight = 50;
  static int age = 10;
  List<int> infos = [height, weight, age];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
            style: GoogleFonts.mcLaren(),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          maleCardColor = inactiveContainerColor;
                          femaleCardColor = currentColor;
                        });
                      },
                      child: ReusableCard(
                          colour: maleCardColor,
                          childCard: IconContent(
                            icon: FontAwesomeIcons.child,
                            name: "MALE",
                          )),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          femaleCardColor = inactiveContainerColor;
                          maleCardColor = currentColor;
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        childCard: IconContent(
                          icon: FontAwesomeIcons.female,
                          name: "FEMALE",
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: ReusableCard(
                    colour: currentColor,
                    childCard: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "HEIGHT",
                          style: GoogleFonts.mcLaren(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toString(),
                                style: GoogleFonts.mcLaren(
                                    color: Colors.white, fontSize: 50)),
                            Text(
                              "cm",
                              style: GoogleFonts.mcLaren(fontSize: 30),
                            )
                          ],
                        ),
                        Slider(
                          min: 100,
                          max: 220,
                          value: height.toDouble(),
                          activeColor: Colors.white,
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                        )
                      ],
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        colour: currentColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "WEIGHT",
                              style: GoogleFonts.mcLaren(fontSize: 15),
                            ),
                            Text(
                              weight.toString(),
                              style: GoogleFonts.mcLaren(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: (BorderRadius.circular(50)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        FontAwesomeIcons.plus,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: (BorderRadius.circular(50)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        FontAwesomeIcons.minus,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: currentColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "AGE",
                              style: GoogleFonts.mcLaren(fontSize: 15),
                            ),
                            Text(
                              age.toString(),
                              style: GoogleFonts.mcLaren(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: (BorderRadius.circular(50)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        FontAwesomeIcons.plus,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: (BorderRadius.circular(50)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        FontAwesomeIcons.minus,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Calculator cal = Calculator(height, weight);
                  print("height is ${height} and weight is ${weight}");
                  print(cal.calculateBMI());

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(cal.calculateBMI(),
                              cal.getResult(), cal.getInterpretation())));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'CALCULATE YOUR BMI',
                      style: GoogleFonts.mcLaren(fontSize: 20),
                    ),
                  ),
                  color: currentColor,
                  margin: EdgeInsets.all(10),
                  height: 60,
                ),
              )
            ],
          ),
        ));
  }
}

class IconContent extends StatelessWidget {
  IconData icon;
  String name;
  IconContent({@required this.icon, this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60,
          color: Colors.white,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name.toString(),
          style: GoogleFonts.mcLaren(),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  ReusableCard({@required this.colour, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: childCard,
      height: 200,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
