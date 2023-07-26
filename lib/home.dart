import 'package:flutter/material.dart';
import 'package:train_master/main.dart';
import 'package:intl/intl.dart';
// import 'package:train_master/models/station_model.dart';
import 'package:train_master/data/data.dart';

final formatter = DateFormat.yMd();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List<String> stationList = ['Puttlam', 'Chilaw', 'Bolawatta', 'Alawathugoda'];
List<String> list101 = [];

class _HomeState extends State<Home> {
  DateTime? _selectedDate;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final lastDate = DateTime(now.year, now.month + 1, now.day);

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: lastDate,
    );

    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final currStationData = registeredStations[0];
    // print(currStationData.stationID);
    for (final i in registeredStations) {
      list101.add(i.stationName);
      // print(list101);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Train Master"),
      ),
      body: Container(
        decoration: BoxDecoration(color: kColorScheme.primaryContainer.withOpacity(.6)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: SizedBox(
              width: 400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 120,
                  ),
                  const SizedBox(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Search Trains",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kColorScheme.onPrimaryContainer,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          DropdownButton(
                            isExpanded: true,
                            hint: const Text("From Station"),
                            // items: [],

                            items: list101.map((String item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 5),
                          DropdownButton(
                            isExpanded: true,
                            hint: const Text("To Station"),
                            // value: registeredStations[0].stationName,
                            items: list101.map((String item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (value) {
                              if (value == null) {
                                return;
                              } else {
                                setState(
                                  () {
                                    // print(registeredStations[0]);
                                  },
                                );
                              }
                            },
                          ),
                          //   isExpanded: true,
                          //   hint: const Text("To Station"),
                          //   items: stationList.map((String item) {
                          //     return DropdownMenuItem(
                          //       value: item,
                          //       child: Text(item),
                          //     );
                          //   }).toList(),
                          //   onChanged: (value) {},
                          // ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      _selectedDate == null ? "No date selected" : formatter.format(_selectedDate!),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: kColorScheme.onPrimaryContainer.withOpacity(.6),
                                      ),
                                    ),
                                    // const SizedBox(width: 5),
                                    IconButton(
                                      onPressed: _presentDatePicker,
                                      // style: IconButton.styleFrom(backgroundColor: kColorScheme.primaryContainer),
                                      icon: Icon(
                                        Icons.calendar_month_rounded,
                                        color: kColorScheme.onPrimaryContainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Search"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
