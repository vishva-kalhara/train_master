import 'package:flutter/material.dart';
import 'package:train_master/widgets/search_item.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  double? availableHeight;

  calcHeight() {
    availableHeight = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Trains"),
      ),
      body: SizedBox(
        height: availableHeight,
        child: const SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SearchItem(title: 'Udarata Menike', departs: '06:00', arrives: '10:00', price: 2600, first: 15, second: 20, third: 50),
              SearchItem(title: 'Nuwara', departs: '18:00', arrives: '23:00', price: 3000, first: 10, second: 21, third: 20),
              SearchItem(title: 'Nuwara', departs: '18:00', arrives: '23:00', price: 3000, first: 10, second: 21, third: 20),
              SearchItem(title: 'Nuwara', departs: '18:00', arrives: '23:00', price: 3000, first: 10, second: 21, third: 20),
            ],
          ),
        ),
      ),
    );
  }
}
