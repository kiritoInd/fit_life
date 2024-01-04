import 'package:fit_life/src/feature/Home/widgets/MainAppbar.dart';
import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:velocity_x/velocity_x.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  _AnalyticsPageState createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  int height = 0;
  int weight = 0;
  int currentDay = 0;
  double bmi = 0;
  List<int> weightHistory = [];
  List<double> bmiHistory = [];

  _AnalyticsPageState(
      {this.height = 0, this.weight = 0, this.currentDay = 0, this.bmi = 0});

  void calculateBMI() {
    if (height == 0 || weight == 0) {
      return;
    }
    bmi = weight / (height * height) * 10000;
    bmiHistory.add(bmi);
  }

  void calculateWeight() {
    int weightChange =
        weight - (!weightHistory.isEmpty ? weightHistory.last : 0);
    weightHistory.add(weightChange);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: CustomAppbar(
          title: "Analytics",
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              elevation: 1,
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Height (cm)',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) {
                          setState(() {
                            height = int.parse(value);
                          });
                        },
                      ),
                    ).p12(),
                    Container(
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Weight (kg)'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) {
                          setState(() {
                            weight = int.parse(value);
                          });
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          calculateBMI();
                          calculateWeight();
                        });
                      },
                      child: Container(
                          width: 200,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.black12,
                              )),
                          child: ('Update').text.uppercase.make()),
                    ).p16(),
                    ('BMI: $bmi').text.bold.lg.make().pOnly(bottom: 15),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 1,
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 400,
                child: Column(
                  children: [
                    ('Weight Over Time').text.bold.make(),
                    Container(
                      height: 200,
                      child: charts.LineChart(
                        [
                          charts.Series<int, int>(
                            id: 'Weight',
                            colorFn: (_, __) =>
                                charts.MaterialPalette.blue.shadeDefault,
                            domainFn: (int weight, int? index) => index!,
                            measureFn: (int weight, int? index) =>
                                weight as num,
                            data: weightHistory,
                          ),
                        ],
                        animate: true,
                      ),
                    ),
                  ],
                ).p12(),
              ),
            ),
          ],
        ).p24(),
      ),
    );
  }
}
