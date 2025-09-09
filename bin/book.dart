main(){
  Book poetry=Book("Dhumketu", "Kazi Nazrul Islam", 300);
  print(" Poetry book price:  ${poetry.discountedPrice(10)}");

  Book novel=Book("Tumi Acho Hridoye", "Humayun Ahmed", 500);
  print(" Novel book price:  ${novel.discountedPrice(25)}");
}

class Book{
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  discountedPrice(double discountPercent){
    return price - (price * discountPercent)/100 ;
  }
  

}