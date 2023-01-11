import 'package:flutter/material.dart';
import '../../../../constantes.dart';
import '../../../../models/product.dart';
import '../../../../size_config.dart';


class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key, required this.product,}) : super(key: key);

  final Product product;

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  int selected_image = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(240),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset('${widget.product.images[selected_image]}'),
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
          selected_image = index;
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
          border: Border.all(color: (selected_image == index) ? kPrimaryColor: Colors.transparent),
        ),
        child: Image.asset('${widget.product.images[index]}'),
      ),
    );
  }
}