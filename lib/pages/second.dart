import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({
    super.key,
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberList>(
      builder: (context, numberProvider, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('List'),
          ),
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: ButtonBar(
                children: [
                  IconButton(
                    onPressed: () {
                      numberProvider.addNumbers();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {
                      numberProvider.subNumber();
                    },
                    icon: const Icon(CupertinoIcons.minus),
                  )
                ],
              )),
          body: Column(
            children: [
              Text(numberProvider.numbers.last.toString()),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.all(16.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: numberProvider.numbers.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(numberProvider.numbers[index].toString()),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
