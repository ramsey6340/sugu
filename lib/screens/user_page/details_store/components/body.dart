import 'package:flutter/material.dart';
import '../../../../CRUD/read.dart';
import '../../../../components/next_button.dart';
import '../../../../components/buttonRounded.dart';
import '../../../../constantes.dart';
import '../../../../datas/product_data.dart';
import '../../../../models/product.dart';
import '../../../../models/store.dart';
import '../../../../size_config.dart';
import '../../chat/components/chat/inbox.dart';
import '../../store/store_screen.dart';
import '../../store_modification/store_modification_screen.dart';
import '../../subscription/subscription_screen.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
            // #0
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                (store.isPopular)?const Icon(Icons.star, color: Colors.yellow,):const SizedBox(),
                (store.isPopular)?const SizedBox(width: 10,):const SizedBox(),
                ButtonRounded(
                  press: (){},
                  text: (isCurrentUser)?
                  '${store.nbPostProduct}/${store.size} posts':
                  '${store.nbPostProduct} posts', textColor: Colors.white, backgroundColor: kRoundedCategoryColor, isBorder: false,),
              ],
            ),
            // #1
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: getProportionateScreenWidth(60),
                    backgroundImage: AssetImage(read.getStoreImg(storeId: store.storeId)),
                  ),
                  Text('${read.getSellerName(sellerId: store.sellerId)}', style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
            // #2
            Container(
              padding: const EdgeInsets.symmetric(),
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ButtonRounded(
                      press: () {
                        (isCurrentUser)? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SubscriptionScreen(title: "Abonnés",))
                        ):null;
                      },
                      text: '200k abonnés',),
                  ),
                  Expanded(
                    child: ButtonRounded(
                      press: () {
                        (isCurrentUser)?Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SubscriptionScreen(title: "Abonnements",))
                        ):null;
                      },
                      text: '30 abonnements'),
                  ),
                ],
              ),
            ),

            // #3
           StoreDescription(store: store),

            // #4
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
                   padding: EdgeInsets.symmetric(horizontal: 0),
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
                   padding: EdgeInsets.symmetric(horizontal: 0),
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
                   padding: EdgeInsets.symmetric(horizontal: 0),
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

            // #5
           // Affichage de quelque images
            const SizedBox(height: 10,),
            const Divider(thickness: 1.2, height: 10,),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                children: List.generate(
                  (products.length>=maxLengthOfExampleProduct)?maxLengthOfExampleProduct:products.length,
                      (index) => InkWell(
                        onTap: (){
                          showProduct(context: context, product: products[index]);
                        },
                        child: Image.asset(
                    products[index].images[0],
                    fit: BoxFit.fill,
                    width: getProportionateScreenWidth(118.3),
                    height: getProportionateScreenHeight(120),
                  ),
                      ),

                ),
              ),
            ),
           const SizedBox(height: 5,),
           Align(
             child: NextButton(
               borderRadius: 5,
               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(120),),
               press: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => StoreScreen(store: store,)));
               },
               text: "Voir plus",
               textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
             ),
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

// méthode pour voir un exemple d'image de produit dans taille plus grande
void showProduct({required BuildContext context,required Product product}) {
  Read read = Read();
  showDialog(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Image.asset(
                        product.images[0],
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(130),
                            child: Wrap(
                              children: [
                                ('${product.minPrice}'!='${product.maxPrice}')?Text('${product.minPrice}-', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),):Text(''),
                                Text('${product.maxPrice} f', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),)
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){},
                                child: (product.nbLike>0)?const Icon(Icons.favorite, color: Colors.white,):const Icon(Icons.favorite_border, color: Colors.white,),
                              ),
                              Text('${product.nbLike}', style: TextStyle(color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                              width: getProportionateScreenWidth(130),
                              child: Text('${product.name}', overflow: TextOverflow.ellipsis, maxLines: 2, style: TextStyle(color: Colors.white, fontSize: 18),)
                          ),
                          (read.getIsProductPopular(productId: product.productId))?SvgPicture.asset('assets/icons/badge.svg', color: Colors.blue.withOpacity(0.8),):SizedBox()
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,)
                ],
              ),
          ),
        );
      }
  );
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
            color: kFourColor,
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
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                      children: [
                        buildInfo2(infos: {'Pays': '${store.country.flag} ${store.country.name}'}),
                        const Divider(thickness: 1.2),
                        buildInfo2(infos: {'Repère': store.morePrecision}),
                        const Divider(thickness: 1.2),
                        buildInfo2(infos: {'Téléphone 1': store.numTel1.completeNumber}),
                        const Divider(thickness: 1.2),
                        buildInfo2(infos: {'Téléphone 2': store.numTel2?.completeNumber}),
                        const Divider(thickness: 1.2),
                        buildInfo2(infos: {'Email': store.email}, isLink: true),
                        const Divider(thickness: 1.2),
                        buildInfo2(infos: {'Géolocalisation': store.geolocation}, isLink: true),
                        const Divider(thickness: 1.2),
                      ],
                    ),
                ),
              ),
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










