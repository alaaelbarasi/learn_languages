import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_languages/views/widgets/appbar_widget.dart';

class UnitScreen extends StatefulWidget {
  const UnitScreen({Key? key}) : super(key: key);

  @override
  State<UnitScreen> createState() => _UnitScreenState();
}

class _UnitScreenState extends State<UnitScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarWidget(),
      body: Container(
        width: double.infinity,
        height: size.height / 3.5,
        decoration: const BoxDecoration(
          color: Color(0xffb4f0fea),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(70),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "UNIT NO",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "title of the unit",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
