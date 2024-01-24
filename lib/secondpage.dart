import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider.dart';

class SecondPage extends StatelessWidget {
  var controler = TextEditingController();
  var controler2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(" second Page"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: controler,
              ),
              TextField(
                controller: controler2,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: controler,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        //Provider.of<CounterPrivider>(context, listen: false)
                        //  .setCountVal(int.parse(controler.text.toString()));
                        if (controler.text.toString().isNotEmpty &&
                            controler2.text.toString().isNotEmpty) {
                          Provider.of<CounterPrivider>(context, listen: false)
                              .addTodo({
                            "title": controler.text.toString(),
                            "subtitle": controler2.text.toString()
                          });
                        }
                      },
                      icon: Icon(Icons.add)),
                  //IconButton(
                  // onPressed: () {
                  // Provider.of<CounterPrivider>(context, listen: false)
                  //     .decreament();
                  //},
                  //icon: Icon(Icons.minimize)),
                ],
              ),
            ],
          ),
        ));
  }
}
