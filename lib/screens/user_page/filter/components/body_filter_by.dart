import 'package:flutter/material.dart';
import 'package:sugu/constantes.dart';
import '../../store/components/choose_categories.dart';
import 'specific_category/product_list_of_category.dart';
import '../../../../datas/global_category.dart';


class BodyFilterBy extends StatelessWidget {
  const BodyFilterBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Map<String,String>> data = [
      {'image': 'assets/images/glap.png','text': GlobalCategory.femme},
      {'image': 'assets/images/glap.png','text': GlobalCategory.homme},
      {'image': 'assets/images/glap.png','text': GlobalCategory.fille},
      {'image': 'assets/images/glap.png','text': GlobalCategory.garcon},
      {'image': 'assets/images/glap.png','text': GlobalCategory.education},
      {'image': 'assets/images/glap.png','text': GlobalCategory.sport},
      {'image': 'assets/images/glap.png','text': GlobalCategory.artisant},
      {'image': 'assets/images/glap.png','text': GlobalCategory.electronique},
      {'image': 'assets/images/glap.png','text': GlobalCategory.voiture},
      {'image': 'assets/images/glap.png','text': GlobalCategory.maison},
      {'image': 'assets/images/glap.png','text': GlobalCategory.vieillard},
      {'image': 'assets/images/glap.png','text': GlobalCategory.enfant},
      {'image': 'assets/images/wireless headset.png','text': GlobalCategory.beaute},
      {'image': 'assets/images/ps4_console_blue_1.png','text': GlobalCategory.jeux},
      {'image': 'assets/images/ps4_console_blue_1.png','text': GlobalCategory.decoration},
      {'image': 'assets/images/tshirt.png','text': GlobalCategory.electricite},
      {'image': 'assets/images/wireless headset.png','text': GlobalCategory.plomberie},
      {'image': 'assets/images/glap.png','text': GlobalCategory.service},
      {'image': 'assets/images/tshirt.png','text': GlobalCategory.animaux},
      {'image': 'assets/images/Image Popular Product 1.png','text': GlobalCategory.restaurant},
      {'image': 'assets/images/Image Popular Product 1.png','text': GlobalCategory.nourriture},
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        color: kBackground
      ),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              image: data[index]['image']!,
              subText: data[index]['text']!,
              press: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductListOfCategory(category: data[index]['text']!,))),
            );
          }
      )
    );
  }
}
class FilterCard extends StatelessWidget {
  const FilterCard({Key? key, required this.image, required this.text, required this.press,}) : super(key: key);
  final String image;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Flexible(
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 2,
              child: GestureDetector(
                onTap: press as void Function(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
              ),
            ),
          ),
          Text(text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
        ],
      );
  }
}
