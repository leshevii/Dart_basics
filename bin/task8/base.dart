abstract class User {
  String email;
  User(this.email);
}

class AdminUser extends User with Provider {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User with Provider {
  GeneralUser(String email) : super(email);
}

mixin Provider on User {
  String? getMailSystem() {
    int start = email.indexOf('@');
    return email.substring(start + 1, email.length);
  }
}

class UserManager extends User {
  List<User> _users = [];
  UserManager(String email) : super(email);

  ///Принимает AdminUser,GeneralUser
  void addUser(user) => _users.add(user);
  void addUsers(List<User> users) => _users.addAll(users);

  ///Принимает AdminUser,GeneralUser
  ///true - пользователь удален or false
  bool removeUser(User user) => _users.remove(user);

  void printAll() {
    _users.forEach((element) {
      element is AdminUser
          ? print(element.getMailSystem())
          : print(element.email);
    });
  }
}
