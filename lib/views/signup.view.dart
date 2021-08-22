import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
                  "Cadastri-se",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                  ),
                ),
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
                  onSaved: (val) {},
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
