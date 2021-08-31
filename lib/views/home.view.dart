import 'package:flutter/material.dart';
import 'package:mobx_basltaio/stores/app.store.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<AppStore>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(store.picture),
              Text(store.name),
              Text(store.email),
            ],
          ),
        ),
      ),
    );
  }
}
