import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  late String name = "";
  @observable
  late String email = "";
  @observable
  late String picture = "https://placehold.it/200";
  @observable
  late String token = "";

  @action
  setUser({
    required String pName,
    required String pEmail,
    required String pPicture,
    required String pToken,
  }) {
    name = pName;
    email = pEmail;
    picture = pPicture;
    token = pToken;
  }
}
