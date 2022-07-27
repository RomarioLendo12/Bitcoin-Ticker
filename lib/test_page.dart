import 'package:bitcoin/coin_data.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  List<Container> getCurrency() {
    List<Container> currencies = [];
    for (String kurensi in currenciesList) {
      String kurensiBaru = kurensi;

      var widgetBaru = Container(
        width: 100,
        padding: EdgeInsets.all(10),
        color: Colors.deepPurple,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Center(
          child: Text(kurensiBaru),
        ),
      );

      currencies.add(widgetBaru);
    }

    return currencies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        centerTitle: true,
      ),
      body: Container(
        height: 150,
        padding: EdgeInsets.all(24),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: getCurrency(),
        ),
      ),
    );
  }
}
