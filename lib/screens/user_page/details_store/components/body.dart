import 'package:flutter/material.dart';

import '../../../../CRUD/read.dart';
import '../../../../components/next_button.dart';
import '../../../../components/buttonRounded.dart';
import '../../../../constantes.dart';
import '../../../../models/store.dart';
import '../../../../size_config.dart';
import '../../chat/components/chat/inbox.dart';
import '../../chat/components/chat/list_chats.dart';
import '../../store/store_screen.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    Read read = Read();
    bool isCurrentUser = read.getIsCurrentUser(sellerId: store.sellerId);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10), vertical: getProportionateScreenHeight(10)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: getProportionateScreenWidth(50),
                    backgroundImage: AssetImage(read.getStoreImg(storeId: store.storeId)),
                  ),
                  Text('${read.getSellerName(sellerId: store.sellerId)}', style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonRounded(
                    press: (){
                      showBottomSheetFollow(context: context, child: ListChats(isBottomSheet: true,));
                    },
                    text: '200k abonnés',),
                  ButtonRounded( press: (){
                    showBottomSheetFollow(context: context, child: ListChats(isBottomSheet: true,));
                  }, text: '30 abonnements'),
                  ButtonRounded( press: (){}, text: (isCurrentUser)?'${store.nbPostProduct}/${store.size} posts':'${store.nbPostProduct} posts', textColor: Colors.white, backgroundColor: kPrimaryColor, isBorder: false),
                ],
              ),
            ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Informations", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                 buildInfo(infos: {'Adresses: ': store.address}),
                 buildInfo(infos: {'Téléphone 1: ': store.numTel1}),
                 buildInfo(infos: {'Téléphone 2: ': store.numTel2}),
                 buildInfo(infos: {'Email: ': store.email}, isLink: true),
                 buildInfo(infos: {'Géolocalisation: ': store.geolocation}, isLink: true),               ],
             ),
            StoreDescription(store: store),
            const SizedBox(height: 20,),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NextButton(text: 'Voir produits', press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StoreScreen(store: store))),),
                  const SizedBox(height: 30,),
                  (isCurrentUser)?NextButton(text: 'Modifier', press: (){}, color: Colors.purple,): NextButton(text: 'Discuter', press: (){Navigator.pushNamed(context, Inbox.routeName, arguments: store);}, color: Colors.purple,),
                ],
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

  Future<dynamic> showBottomSheetFollow({required BuildContext context, Widget? child}) {
    return showModalBottomSheet(
      backgroundColor: kBackground,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return child!;
    });
  }

  Text buildInfo({required Map<String?, dynamic?> infos, bool isLink=false}) {
    return Text.rich(
     TextSpan(text: infos.keys.first, style: TextStyle(color: Colors.black),
         children: [TextSpan(text: (infos.values.first != null)?'${infos.values.first}':'', style: (isLink)?TextStyle(color: Colors.blue, decoration: TextDecoration.underline):TextStyle(color: Colors.black))])
    );
 }

  Widget? isNnull({required String? text}) {
    return (text != null)? Text(text): null;
  }

}

class StoreDescription extends StatelessWidget {
  const StoreDescription({Key? key, required this.store,}) : super(key: key);

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          Text(
            "${store.description}",
            maxLines: 3,overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
          ),
          GestureDetector(
            onTap: (){},
            child: Row(
              children: const [
                Text("Voir plus",
                  style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.navigate_next, color: kPrimaryColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}










