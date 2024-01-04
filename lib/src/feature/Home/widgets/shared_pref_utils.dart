import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtil {
  static final String workoutCounterKey = 'workoutCounter';

  Future<int> getWorkoutCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(workoutCounterKey) ?? 0;
  }

  Future<void> incrementWorkoutCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int currentValue = prefs.getInt(workoutCounterKey) ?? 0;
    await prefs.setInt(workoutCounterKey, currentValue + 1);
  }
}
