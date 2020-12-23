import 'package:app/common/common.dart';

import 'register_event.dart';
export 'register_event.dart';
import 'register_state.dart';
export 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is FocusMailFieldEvent) {
      yield state.copyWith(hasFocus: true);
    } else if (event is NotifyMailAddrIsValieEvent) {
      yield state.copyWith(isMailAddrValid: event.isValid);
    }
  }
}
