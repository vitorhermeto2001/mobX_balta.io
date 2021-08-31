import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_basltaio/controllers/signup.controller.dart';
import 'package:mobx_basltaio/view-model/signup.viewmodel.dart';

import 'home.view.dart';

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();

  final _controller = new SignupController();

  var model = new SignupViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 80,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  "CADASTRO",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
                // fild para o nome
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome Inválido';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.name = val!;
                  },
                ),
                // fild para o email
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'E-mail Inválido';
                    }
                    if (value.contains('@') == false) {
                      return 'E-mail Inválido';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.email = val!;
                  },
                ),
                // fild para a senha
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Senha Inválida';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.password = val!;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                model.busy
                    ? Center(
                        child: Container(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                          }
                          setState(
                            () {
                              _controller.create(model).then(
                                (data) {
                                  setState(
                                    () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeView(),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          );
                        },
                        child: Text(
                          "Cadastrar",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
