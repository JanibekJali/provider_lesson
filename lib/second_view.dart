import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/list_number_provider.dart';

class SecondView extends StatefulWidget {
  const SecondView({
    super.key,
  });
  // final List<int> numbers;

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
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
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbersListProvider.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbersListProvider.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      );
                    }),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              numbersListProvider.add();
              // setState(() {
              //   final last =  numbersListProvider.numbers.last;
              //    numbersListProvider.numbers.add(last + 1);
              // });
            }),
      ),
    );
  }
}
