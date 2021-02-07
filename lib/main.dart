import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

//final TextEditingController eCtrl = new TextEditingController();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new ListDisplay(),
    );
  }
}
class ListDisplay extends StatefulWidget {
  @override
  State createState() => new DyanmicList();
}
class DyanmicList extends State<ListDisplay> {
  List<String> litems = ["1","2","3","4"];
  final TextEditingController eCtrl = new TextEditingController();
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Луч Земли"),),
        body: new Column(
          children: <Widget>[
            new TextField(
              controller: eCtrl,
              onSubmitted: (text) {
                litems.add(text);
                eCtrl.clear();
                setState(() {});
              },
            ),
            new Expanded(
                child: new ListView.builder
                  (
                    itemCount: litems.length,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return ListTile(
                        title: Text(litems[Index]),
                      );

                    }
                )
            )
          ],
        )
    );
  }
}
