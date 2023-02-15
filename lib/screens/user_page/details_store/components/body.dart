import 'package:flutter/material.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/next_button.dart';
import '../../../../components/buttonRounded.dart';
import '../../../../components/product_card.dart';
import '../../../../constantes.dart';
import '../../../../models/store.dart';
import '../../../../size_config.dart';
import '../../chat/components/chat/inbox.dart';
import '../../store/store_screen.dart';
import '../../store_modification/store_modification_screen.dart';
import '../../subscription/subscription_screen.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    Read read = Read();
    bool isCurrentUser = read.getIsCurrentUser(sellerId: store.sellerId);
    TextStyle buttonStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SubscriptionScreen(title: "Abonnés",))
                      );
                      //showBottomSheetFollow(context: context, child: ListMessages(isBottomSheet: true,));
                    },
                    text: '200k abonnés',),
                  ButtonRounded(
                    press: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SubscriptionScreen(title: "Abonnements",))
                      );
                    //showBottomSheetFollow(context: context, child: ListMessages(isBottomSheet: true,));
                    },
                    text: '30 abonnements'),
                  ButtonRounded(press: (){}, text: (isCurrentUser)?'${store.nbPostProduct}/${store.size} posts':'${store.nbPostProduct} posts', textColor: Colors.white, backgroundColor: kRoundedCategoryColor, isBorder: false,),
                ],
              ),
            ),

           StoreDescription(store: store),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               // Prémier bouton, "S'abonner" ou "Modifier"
               Expanded(
                 child: NextButton(
                   press: (){
                     (isCurrentUser)?Navigator.pushNamed(context, StoreModificationScreen.routeName, arguments: store):null;
                   },
                   text: (isCurrentUser)?"Modifier":"S'abonné",
                   borderRadius: 5,
                   color: kRoundedCategoryColor,
                   textStyle: buttonStyle,
                 ),
               ),
               const SizedBox(width: 5,),
               Expanded(
                 child: NextButton(
                   press: (){
                     (isCurrentUser)?null:Navigator.pushNamed(context, Inbox.routeName, arguments: store);
                   },
                   text: (isCurrentUser)?"Statistique":"Message",
                   borderRadius: 5,
                   color: Colors.white,
                   borderColor: Colors.black,
                   textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                 ),
               ),
               const SizedBox(width: 5,),
               (!isCurrentUser)?
               Expanded(
                 child: NextButton(
                   press: (){
                     showInfo(context, store);
                   },
                   text: "Contactes",
                   borderRadius: 5,
                   color: Colors.white,
                   borderColor: Colors.black,
                   textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                 ),
                )
               :const SizedBox(),
              (!isCurrentUser)?const SizedBox(width: 5,):const SizedBox(),
              CustomPopupMenu(
                barrierColor: Colors.transparent,
                arrowColor: kPopupMenuColor,
                menuBuilder: () => popupMenuContent(isCurrentUser: isCurrentUser),
                pressType: PressType.singleClick,
                verticalMargin: -3,
                child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      border: Border.all(color: kRoundedCategoryColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.more_horiz, color: kRoundedCategoryColor,),
                  ),
              )
            ],
           ),
           const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  // Le contenue du menu floatant, i.e. le contenue du PopMenu
  Widget popupMenuContent({required bool isCurrentUser}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: kPopupMenuColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.visibility_outlined, color: Colors.blue, size: 16,),
                  SizedBox(width: 5,),
                  Text("voir plus de produit", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.info_outline, color: Colors.blue, size: 16,),
                SizedBox(width: 5,),
                Text("voir les promotions", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
              ],
            ),
            (isCurrentUser)?const SizedBox(height: 5,):const SizedBox(),
            (isCurrentUser)?
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.sell_outlined, color: Colors.blue, size: 16,),
                SizedBox(width: 5,),
                Text("lancer une promotion", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
              ],
            ): const SizedBox(),
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

}

Material buildInfo({required Map<String?, dynamic> infos, required Icon icon,bool isLink=false}) {
  return Material(
    elevation: 2,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              const SizedBox(width: 10,),
              Text(
                  '${infos.keys.first}',
                  style: const TextStyle(color: Colors.black)
              ),
            ],
          ),
          Text(
              (infos.values.first != null)?'${infos.values.first}':'',
              style: (isLink)?
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)
                  :const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,)
          ),
        ],
      ),
    ),
  );
}

Widget buildInfo2({required Map<String?, dynamic> infos, bool isLink=false}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
          '${infos.keys.first}',
          style: const TextStyle(fontSize: 16, )
      ),
      Text(
          (infos.values.first != null)?'${infos.values.first}':'',
          style: (isLink)?
          const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16, decoration: TextDecoration.underline)
              :const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)
      )
    ],
  );
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
         Row(
           children: List.generate(
               store.globalCat.length, (index) => Text('${store.globalCat[index]} | ', style: const TextStyle(fontWeight: FontWeight.w800, ),)
           ),
         ),
          const SizedBox(height: 5,),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.8,
            child: Text(
              "${store.description}",
              style: TextStyle(color: Colors.black),
              maxLines: 3,overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
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

void showInfo(BuildContext context, Store store) {
  showGeneralDialog(
      barrierLabel: 'Constactes',
      barrierColor: Colors.black.withOpacity(0.5),
    context: context,
    pageBuilder: (context,__,___){
      return Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(top: 60, left: 12, right: 12, bottom: 60),
          decoration: BoxDecoration(
            color: kBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text("Constactes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                      children: [
                        buildInfo2(infos: {'Repère': store.morePrecision}),
                        Divider(thickness: 1.2),
                        buildInfo2(infos: {'Téléphone 1': '(+223) ${store.numTel1}'}),
                        Divider(thickness: 1.2),
                        buildInfo2(infos: {'Téléphone 2': store.numTel2}),
                        Divider(thickness: 1.2),
                        buildInfo2(infos: {'Email': store.email}, isLink: true),
                        Divider(thickness: 1.2),
                        buildInfo2(infos: {'Géolocalisation': store.geolocation}, isLink: true),
                        Divider(thickness: 1.2),
                      ],
                    ),
                ),
              ),
              /*Expanded(
                child: Column(
                  children: [
                    buildInfo(infos: {'Adresses: ': store.morePrecision}, icon: const Icon(Icons.store_outlined, color: kAppBarColor,)),
                    buildInfo(infos: {'Téléphone 1: ': store.numTel1}, icon: const Icon(Icons.phone_android, color: kAppBarColor)),
                    buildInfo(infos: {'Téléphone 2: ': store.numTel2}, icon: const Icon(Icons.phone_android, color: kAppBarColor)),
                    buildInfo(infos: {'Email: ': store.email}, isLink: true, icon: const Icon(Icons.mail_outline, color: kAppBarColor)),
                    buildInfo(infos: {'Géolocalisation: ': store.geolocation}, isLink: true, icon: const Icon(Icons.location_on_outlined, color: kAppBarColor)),
                  ],
                ),
              ),*/
              NextButton(
                borderRadius: 5,
                press: (){Navigator.pop(context);},
                textStyle: TextStyle(fontSize: 16),
                text: 'Fermer',
              )
            ],
          ),
        ),
      );
    }
  );
}










