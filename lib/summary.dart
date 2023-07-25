import 'package:flutter/material.dart';
import 'package:train_master/main.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Summary"),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Udarata Menike",
                          // overflow: TextOverflow.fade,
                          // maxLines: 1,
                          // softWrap: false,

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kColorScheme.onPrimaryContainer,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Deptarts: 05:00  |  Arrives: 10:00  |  10/07/2023",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: kColorScheme.onPrimaryContainer.withOpacity(.5),
                          ),
                        ),
                        // const SizedBox(width: 10),
                        // Text(
                        //   "Arrives: 05:55",
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w400,
                        //     color: kColorScheme.onPrimaryContainer.withOpacity(.5),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Compartment 02",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kColorScheme.onPrimaryContainer,
                          ),
                        ),
                        // const SizedBox(width: 10),
                        // Text(
                        //   "Arrives: 05:55",
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w400,
                        //     color: kColorScheme.onPrimaryContainer.withOpacity(.5),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Sheet no - C1, C2, C3",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kColorScheme.onPrimaryContainer,
                          ),
                        ),
                        // const SizedBox(width: 10),
                        // Text(
                        //   "Arrives: 05:55",
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w400,
                        //     color: kColorScheme.onPrimaryContainer.withOpacity(.5),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          "LKR 3000",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: kColorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      color: Colors.black.withOpacity(.2),
                      width: MediaQuery.of(context).size.width - 100,
                      height: 1.5,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Back"),
                        ),
                        const SizedBox(width: 5),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Continue"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
