import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/first_view.dart';
import 'package:provider_lesson/list_number_provider.dart';

void main() {
  runApp(const ProviderLesson());
}

class ProviderLesson extends StatelessWidget {
  const ProviderLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ListNumbersProvider())
      ],
      child: const MaterialApp(
        home: FirstView(),
      ),
    );
  }
}
