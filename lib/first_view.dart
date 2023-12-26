import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/list_number_provider.dart';
import 'package:provider_lesson/second_view.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  // List<int> numbers = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Consumer<ListNumbersProvider>(
      builder: (context, numbersListProvider, child) => Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numbersListProvider.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: numbersListProvider.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbersListProvider.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      );
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondView(),
                      ),
                    );
                  },
                  child: Text('SecondView'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              numbersListProvider.add();
              // setState(() {
              //   final last = numbersListProvider.numbers.last;
              //   numbers.add(last + 1);
              // });
            }),
      ),
    );
  }
}
