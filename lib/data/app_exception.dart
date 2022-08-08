class AppException implements Exception{
  final _message;
  final _prefix;
  AppException([this._message,this._prefix]);
  String toString(){
    return'$_prefix$_message';
  }

}
//  exception generate when there is some problem during fetching data from Api
class FetchDataException extends AppException{
  FetchDataException([String? message]):super(message,'Error During Communication');
}

class BadDataException extends AppException{
  BadDataException([String? message]):super(message,'invalid request');
}
/* while fetching data from some Api you should pay for it .
 when you paid to them then they issue a unique Token(key) .
so UnAuthorised error occured when you have no token */
class UnAthurozedException extends AppException{
  UnAthurozedException([String? message]):super(message,'UnAuthorized request');
}

class InValidInputException extends AppException{
  InValidInputException([String? message]):super(message,'InValidInputException Exception');
} 