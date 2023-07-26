import 'package:flutter/material.dart';
import 'package:train_master/home.dart';

class TrainMaster extends StatefulWidget {
  const TrainMaster({super.key});

  @override
  State<TrainMaster> createState() => _TrainMasterState();
}

class _TrainMasterState extends State<TrainMaster> {
  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}