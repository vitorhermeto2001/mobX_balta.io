import 'package:mobx_basltaio/models/user.model.dart';
import 'package:mobx_basltaio/repositories/account.repository.dart';
import 'package:mobx_basltaio/view-model/signup.viewmodel.dart';

class SignupController {
  late AccountRepository repository;

  SignupController() {
    repository = new AccountRepository();
  }

  Future<UserModel> create(SignupViewModel model) async {
    model.busy = true;
    var user = await repository.createAccount(model);
    model.busy = false;
    return user;
  }
}
