import 'package:rxdart/rxdart.dart';
import 'package:w_store/bloc/validation/validator.dart';
class  LoginBloc with Validator {
final _loginEmail= BehaviorSubject<String>();
final _loginPassword=BehaviorSubject<String>();

// getter
  Stream<String> get loginEmail => _loginEmail.stream.transform(emailVlaidator);
  Stream<String> get loginPassword => _loginPassword.stream.transform(passwordValidator);
Stream <bool> get isValid =>
    Rx.combineLatest2(loginEmail, loginPassword, (a, b) => true);
  // setter
  Function(String) get changeLoginEmail =>_loginEmail.sink.add;
  Function(String) get changeLoginPassword =>_loginPassword.sink.add;

  void  submitted(){
    print(_loginEmail.value);
    print (_loginPassword.value);
  }
void disposed(){
  _loginEmail.close();
  _loginPassword.close();
}
}