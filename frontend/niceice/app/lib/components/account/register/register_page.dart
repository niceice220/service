
import 'package:app/common/common.dart';
import 'package:app/components/account/register/bloc/register_bloc.dart';
import 'register_mail_account_field.dart';
import 'get_auth_code.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final _registerButtonFocusNode = FocusNode();

  final _accountKey = GlobalKey<AccountFieldState>();
  final _mailKey = GlobalKey<AccountFieldState>();
  final _authCodeKey = GlobalKey<GetAuthCodeFieldState>();
  final _pwdKey = GlobalKey<PasswordFieldState>();

  @override
  void dispose() {
    _registerButtonFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> body = <Widget>[
      SizedBox(height: 80),
      LoginLogo(),
      Container(
          margin: EdgeInsets.symmetric(horizontal: gHorizontalPadding),
          child: AccountField(
            key: _accountKey,
            inputLabel: gUserNameLabel,
            validator: verifyAccount,
            onEditingCompleted: () {
              _mailKey.currentState.focusNode.requestFocus();
            },
          )),
      heightBox20,
      Container(
        margin: EdgeInsets.symmetric(horizontal: gHorizontalPadding),
        child: RegisterMailAccountField(
          key: _mailKey,
          inputLabel: gEmailLabel,
          onEditingCompleted: () {
            _authCodeKey.currentState.focusNode.requestFocus();
          },
        ),
      ),
      heightBox20,
      BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
        if (state.hasFocusMailField) {
          return Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: gHorizontalPadding),
                  child: GetAuthCodeField(
                    key: _authCodeKey,
                    inputLabel: gEmailAuthCodeLabel,
                    onEditingCompleted: () {
                      _pwdKey.currentState.focusNode.requestFocus();
                    },
                  )),
              heightBox20,
            ],
          );
        } else {
          return Container();
        }
      }),
      Container(
          margin: EdgeInsets.symmetric(horizontal: gHorizontalPadding),
          child: PasswordField(
            key: _pwdKey,
            onEditingCompleted: () {
              _registerButtonFocusNode.requestFocus();
            },
          )),
      heightBox20,
      FlatButton(
        onPressed: () {},
        focusNode: _registerButtonFocusNode,
        child: Text(gRegister),
        splashColor: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(30.0),
        shape: CircleBorder(
          side: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      heightBox20
    ];

    final isDesktop = isDisplayDesktop(context);
    return isDesktop
        ? Center(
            child: Container(
                width: desktopLoginScreenMainAreaWidth(context: context),
                child: Column(children: body)))
        : ListView(
            padding: EdgeInsets.symmetric(horizontal: gHorizontalPadding),
            children: body);
  }
}
