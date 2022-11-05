class User {
  String _email;

  User(this._email);

  factory User.blank() {
    return User('test@test.com');
  }
}

class AdminUser extends User with mailDomenGetter {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin mailDomenGetter on User {
  String get getMailSystem {
    try {
      List<String> mailParts = _email.split('@');
      if (mailParts.length == 2) {
        return mailParts[1];
      } else {
        throw ArgumentError.value(_email, 'Email должен содержать символ "@".');
      }
    } catch (error) {
      return error.toString();
    }
  }
}

class UserManager<T extends User> {
  final List<T> _userList = [];

  void addUser(T newUser) => _userList.add(newUser);

  void removeUser(T user) => _userList.remove(user);

  void printAllUsers() {
    for (int i = 0; i < _userList.length; i++) {
      if (_userList[i].runtimeType == AdminUser) {
        print((_userList[i] as AdminUser).getMailSystem);
        continue;
      }
      print(_userList[i]._email);
    }
  }
}
