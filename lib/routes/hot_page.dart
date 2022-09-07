import 'package:flutter/material.dart';

class HotPage extends StatefulWidget {
  const HotPage({Key? key}) : super(key: key);

  @override
  State<HotPage> createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("综合热门"),);
  }
}
