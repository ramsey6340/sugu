import '../models/seller.dart';
import '../models/store.dart';
import 'seller_data.dart';

/// datas_current contient les données courant, les données globals qui sont utilisé
/// partout dans l'application, comme par exemple les données du seller courant, du store courant, etc.
/// Ces données sont accessible partout dans l'application


Seller currentSeller = sellers[0]; // currentSeller répresente le vendeur courant, le vendeur actuellement connecté
Store currentStore = Store.isEmpty(); // currentStore est le store courant, le store du vendeur actuellement connecté
Store oldStore = Store.isEmpty(); // oldStore représente une ancienne version de currentStore qui n'a pas encore été validé ou enrégistré lors d'une modification du currentStore

