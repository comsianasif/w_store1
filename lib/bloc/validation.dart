class ValidationItem {
//
//   String _email, _password, _username;
//
// //consturcture
//
//   ValidationItem(this._email, this._password, this._username);
//
//   ValidationItem.name(this._email, this._username);
//
//
//   String get email => _email;

  // set email(String value) {
  //   _email = value;
  // }

  String emailValidation( String input)
  {
    if(input.isEmpty)
    {
      return 'Please type an Email';

    }
    if( !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input)) {
      return"Please Valid an Email";
    }

  }
  // password validation
  String passwordValidation( String input){
    if(input.isEmpty)
    {
      return 'Please type Password';

    }
    if (input.length<6)
    {
      return'Password is less than 6';
    }

   // return input;
  }
  String usernameValidation( String input){
    if(input.isEmpty)
    {
      return 'Please type Username';

    }
    if (input.length<6)
    {
      return'Username is less than 6';
    }

  //  return input;
  }
  //
  // set password(value) {
  //   _password = value;
  // }
  //
  // set username(value) {
  //   _username = value;
  // }
  //
  // get password => _password;
  //
  // get username => _username;
}