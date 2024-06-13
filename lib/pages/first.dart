import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/list_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<NumberList2>(
              builder: (context, value, child) => Text(
                value.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer<NumberList2>(
        builder: (context, value, child) => FloatingActionButton.extended(
          onPressed: () {},
          tooltip: 'Increment',
          label: ButtonBar(
            children: [
              IconButton(
                  onPressed: () {
                    value.add();
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    value.sub();
                  },
                  icon: const Icon(CupertinoIcons.minus)),
            ],
          ),
        ),
      ),
    );
  }
}
