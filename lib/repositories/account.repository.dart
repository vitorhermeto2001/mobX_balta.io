import 'package:mobx_basltaio/models/user.model.dart';
import 'package:mobx_basltaio/view-model/signup.viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: "1",
      name: 'vitor hermeto',
      email: "vitorhermeto@hotmail.com",
      picture: "https://picsum.photos/200/200",
      role: "studant",
      token: "xpto",
    );
  }
}
