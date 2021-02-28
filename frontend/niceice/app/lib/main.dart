import 'package:app/common/common.dart';
import 'package:app/app.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  runApp(App());
}
