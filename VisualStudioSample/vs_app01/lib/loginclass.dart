class Login{
  String userName;
  String passWord;

  Login(
    this.userName,
    this.passWord,
  ); 

  Map <String,dynamic>toMap(){
    var map = <String,dynamic>{
      'Username':userName,
      'Password':passWord,
    };
    return map;
  }

  Login.fromMap(Map<String,dynamic>map){
    userName = map['Username'];
    passWord = map['Password'];
  }

}