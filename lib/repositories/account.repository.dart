import 'package:mobx_basltaio/models/user.model.dart';

class AccountRepository {
  Future<UserModel> createAccount() async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: "1",
      name: 'vitor hermeto',
      email: "https://picsum.photos/200/200",
      picture: "",
      role: "studant",
      token: "xpto",
    );
  }
}
