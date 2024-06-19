// Dans cet exercice, vous allez devoir créer une boucle for simple 
// qui va itérer sur une liste de nombres et les afficher à la console.
// Créez une liste de nombres allant de 1 à 10.
// Utilisez une boucle for pour parcourir chaque élément de la liste 
// et les afficher à la console.

void numberList() {
  // List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for(int i = 1; i <= 10; i++){
    print(i);
  }
}

void numberListCorrection() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int number in numbers) {
    print(number);
  }
}

// Vous devez écrire une boucle for qui va afficher les nombres pairs de 0 à 10.

void evenNumber() {
  for (int i = 0; i <= 10; i += 2) {
    print(i);
  }

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int number in numbers) {
    if(number % 2 == 0){
      print(number);
    }
  }
}

// void race(){
//   int position = 0;
//   int arrival = 20;
  
//   while(position < arrival){

//   }

// }


void main(List<String> args) {
  
  // numberList();
  // numberListCorrection();
  evenNumber();
}