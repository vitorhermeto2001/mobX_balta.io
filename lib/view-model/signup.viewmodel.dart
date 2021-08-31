import 'package:mobx/mobx.dart';
part 'signup.viewmodel.g.dart';

class SignupViewModel = _SignupViewModelBase with _$SignupViewModel;

abstract class _SignupViewModelBase with Store {
  @observable
  String name = "";
  @observable
  String email = "";
  @observable
  String password = "";
  @observable
  bool busy = false;
}
