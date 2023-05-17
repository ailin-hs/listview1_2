import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var vengadores = ["capitan america", "iron man", "hulk", "thor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
              itemCount: vengadores.length,
              itemBuilder: (context, index)=>ListTile(
                title: Text(vengadores[index]),
                trailing: Icon(Icons.chevron_right, color: Colors.red),
                onTap: () {
                  var opc=vengadores[index];
                  print(opc);
                },
              ),
              separatorBuilder:(_,__)=> Divider()

            )
    );
  }
}
