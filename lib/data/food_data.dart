
import 'package:restofood/model/food.dart';

class FoodData {
  static List<Food> getFoods() {
    
    //Inisiaslisasi object food
    var _foods = new List<Food>();

    //Menambahkan data food
    _foods.add(Food(
      name: "Ayam Bakar",
      description: "Ayam bakar lezat dan pedas",
      fullDescription:"ayam potong 4, Jeruk nipis, daun salam, sereh geprek, bawang merah, bawang putih, cabe merah, cabe rawit (sesuai selera)",
      price: 20000,
      image: "food-1.png"
    ));
    _foods.add(Food(
      name: "Sate Ayam",
      description: "Sate Ayam bumbu kacang",
      fullDescription:"ayam potong 4, Jeruk nipis, daun salam, sereh geprek, bawang merah, bawang putih, cabe merah, cabe rawit (sesuai selera)" ,
      price: 15000,
      image: "food-2.png"
    ));
    _foods.add(Food(
      name: "Jus Jeruk",
      description: "Jus jeruk manis",
      fullDescription:"ayam potong 4, Jeruk nipis, daun salam, sereh geprek, bawang merah, bawang putih, cabe merah, cabe rawit (sesuai selera)" ,
      price: 8000,
      image: "drink-1.png"
    ));
    _foods.add(Food(
      name: "Jus Mangga",
      description: "Jus mangga manis",
      fullDescription:"ayam potong 4, Jeruk nipis, daun salam, sereh geprek, bawang merah, bawang putih, cabe merah, cabe rawit (sesuai selera)" ,
      price: 8000,
      image: "drink-2.png"
    ));
 
    return _foods;
  }
}