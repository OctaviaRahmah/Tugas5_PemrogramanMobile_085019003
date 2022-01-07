import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StateFulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final string title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePageState> {
  List<Peserta> listPeserta = [];
  Repository repository = Repository();

  getData() async {
    listPeserta = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Text(listPeserta[index].title),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: listPeserta.length),
    );
  }
}
