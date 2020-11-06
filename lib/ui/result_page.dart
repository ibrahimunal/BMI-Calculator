import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String state;
  final String message;

  ResultPage(this.bmi, this.state, this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text(
          "BMI CALCULATOR",
          style: GoogleFonts.mcLaren(),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              "Your Result",
              style: GoogleFonts.mcLaren(fontSize: 30),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1F33)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    state,
                    style: GoogleFonts.mcLaren(fontSize: 25),
                  ),
                  Text(
                    bmi,
                    style:
                        GoogleFonts.mcLaren(fontSize: 50, color: Colors.green),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      message,
                      style: GoogleFonts.mcLaren(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'Return Back',
                  style: GoogleFonts.mcLaren(fontSize: 20),
                ),
              ),
              color: Color(0xFF1D1F33),
              margin: EdgeInsets.all(10),
              height: 60,
            ),
          )
        ],
      ),
    );
  }
}
