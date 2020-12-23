import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/common/common.dart';
import 'bloc/register_bloc.dart';

class RegisterMailAccountField extends AccountField {
  RegisterMailAccountField({
    @required Key key,
    @required inputLabel,
    VoidCallback onEditingCompleted,
  }) : super(
          key: key,
          inputLabel: inputLabel,
          validator: verifyMailAddr,
          textInputType: TextInputType.emailAddress,
          onEditingCompleted: onEditingCompleted,
        );

  @override
  _RegisterMailAccountFieldState createState() =>
      _RegisterMailAccountFieldState();
}

class _RegisterMailAccountFieldState extends AccountFieldState {
  bool _isFirstAddListener = true;

  @override
  Widget build(BuildContext context) {
    super.onTap = () {
      BlocProvider.of<RegisterBloc>(context).add(FocusMailFieldEvent());
    };
    if (_isFirstAddListener) {
      super.textController.addListener(() {
        BlocProvider.of<RegisterBloc>(context)
            .add(NotifyMailAddrIsValieEvent(super.isValid));
      });
      _isFirstAddListener = false;
    }
    Widget accountFieldState = super.build(context);
    return accountFieldState;
  }
}
