import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sugu/components/subtitle_cart.dart';

import '../models/cart.dart';
import 'image_of_cart.dart';


class ListTitleCart extends StatefulWidget {
  const ListTitleCart({Key? key, required this.cart,}) : super(key: key);

  final Cart cart;

  @override
  State<ListTitleCart> createState() => _ListTitleCartState();
}

class _ListTitleCartState extends State<ListTitleCart> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.cart.product.id.toString()),
      direction: DismissDirection.endToStart,
      background: Container(
        padding: EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFFFE6E6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset('assets/icons/Trash.svg'),
          ],
        ),
      ),
      child: ListTile(
        leading: ImageOfCart(img: widget.cart.product.images[0]),
        title: Text('${widget.cart.product.title}', maxLines: 2, style: TextStyle(overflow: TextOverflow.ellipsis),),
        subtitle: SubtitleCart(price: widget.cart.product.price, nbItem: widget.cart.num_of_items,),
      ),
    );
  }
}