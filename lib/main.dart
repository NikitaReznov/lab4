import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      //title: 'Список элементов',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Список элементов'),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  final List<String> _array = [];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemBuilder: (context, i)
            {
              if(i.isOdd)
              {
                return const Divider();
              }

              final int index = i ~/ 2;
              _array.addAll(['$index']);
              return ListTile(title: Text('2 ^ ' + _array[index] + ' = ' + pow(2, index).toString()));
            }
        )
    );
  }
}
