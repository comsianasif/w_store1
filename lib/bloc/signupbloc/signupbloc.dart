
import 'package:rxdart/rxdart.dart';
import 'package:w_store/bloc/validation/validator.dart';

class SignUpBloc with Validator
{
  final _signUpUsername= BehaviorSubject<String>();
  final _signUpEmail= BehaviorSubject<String>();
  final _signUpPassword= BehaviorSubject<String>();
//getter
  Stream<String> get signUpUserName => _signUpUsername.stream.transform(nameValidator);
  Stream<String> get signUpEmail => _signUpEmail.stream.transform(emailVlaidator);
  Stream<String> get signUpPassword => _signUpPassword.stream.transform(passwordValidator);
  Stream<bool> get isValid =>
      Rx.combineLatest3
        (signUpUserName, signUpEmail, signUpPassword, (a, b, c) => true);
  // setter
  Function(String) get changeSignUpName =>_signUpUsername.sink.add;
  Function(String) get changeSignUpEmail =>_signUpEmail.sink.add;
  Function(String) get changeSignUpPassword =>_signUpPassword.sink.add;

  void dispose(){
_signUpUsername.close();
_signUpEmail.close();
_signUpPassword.close();
}

}