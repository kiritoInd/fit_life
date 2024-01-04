import 'package:fit_life/src/feature/Home/widgets/shared_pref_utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterWorkoutClock extends StatefulWidget {
  final String title;
  final String count;
  final String imagePath;

  const CounterWorkoutClock({
    required this.title,
    required this.count,
    required this.imagePath,
  });

  @override
  _CounterWorkoutClockState createState() => _CounterWorkoutClockState();
}

class _CounterWorkoutClockState extends State<CounterWorkoutClock> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    getCounter();
  }

  Future<void> getCounter() async {
    count = await SharedPreferenceUtil().getWorkoutCounter();
    setState(() {});
  }

  Future<void> incrementCounter() async {
    await SharedPreferenceUtil().incrementWorkoutCounter();
    getCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(widget.imagePath, height: 30, width: 30)
              .pOnly(left: 10, right: 30),
          (widget.title).text.xl.white.bold.size(20).make(),
          TextButton(
            onPressed: () {
              incrementCounter();
            },
            child: (count.toString()).text.white.white.xl.size(18).bold.make(),
          ),
        ],
      ),
    );
  }
}
