import 'package:app/common/common.dart';
import 'package:app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  Bloc.observer = AppBlocObserver();
  runApp(App());
}
