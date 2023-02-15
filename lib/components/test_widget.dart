import 'package:flutter/material.dart';
import '../models/store.dart';

class TestWidget extends StatelessWidget {
  static String routeName = 'test_widget';
  const TestWidget({Key? key, required this.store}) : super(key: key);
  final Store store;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.55,
            ),
            itemCount: 10,
            itemBuilder: (context, index){
              final item = store.image;
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(item)
                    )
                ),
              );
            },
          ),
        ),
    );
  }
}












