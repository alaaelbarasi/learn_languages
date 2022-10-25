import 'package:flutter/material.dart';
import 'package:learn_languages/views/screens/unit_screen.dart';

import 'package:learn_languages/views/widgets/appbar_widget.dart';

class MainUnitScreen extends StatefulWidget {
  const MainUnitScreen({Key? key}) : super(key: key);

  @override
  State<MainUnitScreen> createState() => _MainUnitScreenState();
}

class _MainUnitScreenState extends State<MainUnitScreen> {
  final _colors = const [
    Color(0xffb4f0fea),
    Color(0xffbb862eb),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height / 3.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const NetworkImage("https://picsum.photos/250?image=9"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.dstATop),
              ),
              color: Colors.deepPurpleAccent,
              borderRadius: const BorderRadius.only(
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
                    "ENGLISH",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "MAIN UNITS",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 50, bottom: 12),
                itemExtent: 75,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const UnitScreen()),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // color: const Color(0xffbb862eb),
                      color: _colors[index % 2],
                      child: ListTile(
                        trailing: const Icon(
                          Icons.circle_outlined,
                          size: 30,
                        ),
                        title: Text(
                          "Unit ${index + 1}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: const Text(
                          "Unit title",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
