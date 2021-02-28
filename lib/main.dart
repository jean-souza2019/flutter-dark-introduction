import 'package:flutter/material.dart';
import 'package:flutter_app_aula2_ex1/addLanguage.dart';
import 'package:flutter_app_aula2_ex1/custom/itemMainList.dart';
import 'package:flutter_app_aula2_ex1/language.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => MyHomePage(),
        "/add": (context) => AddLanguage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  List<Language> languages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas Linguagens"),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: _goToNewLanguage)
        ],
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            spacing: 10,
            children: buildChips()
          ),
          Expanded(
            child: ListView(
                children: buildListItens()
            ),
          ),
        ],
      ),
    );
  }

  void _goToNewLanguage(){
    Future future = Navigator.pushNamed(
      context,
      "/add"
    );
    future.then((language) {
      setState(() {
        languages.add(language);
      });
    });
  }

  List<ChoiceChip> buildChips(){
    return languages.map((language) => ChoiceChip(
        label: Text(language.name),
        selected: language.selected,
        onSelected: (value) {
          setState(() {
            language.selected = value;
          });
        },
      ),
    ).toList();
  }

  List<Widget> buildListItens(){
    return languages
        .where((language) => language.selected)
        .map((language) =>
          getItemList(
              language.name,
              language.detail
          )
        )
        .toList();

  }


}
