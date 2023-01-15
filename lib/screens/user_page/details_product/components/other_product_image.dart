import 'package:flutter/material.dart';
import '../../../../constantes.dart';
import '../../../../models/product.dart';
import '../../../../size_config.dart';


class OtherProductImage extends StatefulWidget {
  const OtherProductImage({Key? key, required this.product,}) : super(key: key);

  final Product product;

  @override
  State<OtherProductImage> createState() => _OtherProductImageState();
}

class _OtherProductImageState extends State<OtherProductImage> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(240),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset('${widget.product.images[selectedImage]}'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              widget.product.images.length,
                  (index) => smallProductView(index)
          ),
        ),
      ],
    );
  }

  // la representation des images des produits en petite taille dans un cadre
  GestureDetector smallProductView(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.all(getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(2)),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: (selectedImage == index) ? kPrimaryColor: Colors.transparent),
        ),
        child: Image.asset('${widget.product.images[index]}'),
      ),
    );
  }
}