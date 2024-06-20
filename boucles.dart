// Dans cet exercice, vous allez devoir créer une boucle for simple 
// qui va itérer sur une liste de nombres et les afficher à la console.
// Créez une liste de nombres allant de 1 à 10.
// Utilisez une boucle for pour parcourir chaque élément de la liste 
// et les afficher à la console.

import 'dart:math';

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

// Vous devez créer un programme en Dart qui utilise une boucle while pour 
// simuler une course entre deux coureurs. Le programme doit afficher la 
// position des coureurs à chaque itération de la boucle jusqu'à ce qu'un 
// des coureurs atteigne la ligne d'arrivée.
// Pour faire avancer les coureurs, vous utilserez un nombre aléatoire avec
// Random().nextInt(4) + 1.

void race(){
  int runner1 = 0;
  int runner2 = 0;
  int arrival = 20;
  
  while(
    (runner1 < arrival) 
    || 
    (runner2 < arrival)
    ){
    runner1 += Random().nextInt(4) +1;
    runner2 += Random().nextInt(4) +1;

    print("Position du coureur 1 : $runner1");
    print("Position du coureur 2 : $runner2");

    if(runner1 > runner2){
      print("Le joueur 1 est en tête");
    } else {
      print("Le joueur 2 est en tête");
    }
  }

  print("Fin de la course");
}

void raceCorrection() {
   // Initial position of runners
  int runner1Pos = 0;
  int runner2Pos = 0;
 
  // Length of the track
  int trackLength = 100;
 
  // Loop until a runner crosses the finish line
  while (runner1Pos < trackLength && runner2Pos < trackLength) {
    // Increment the position of each runner
    runner1Pos += Random().nextInt(4) + 1;
    runner2Pos += Random().nextInt(4) + 1;
 
    // Display the current positions of the runners
    print('Runner 1: ${'*' * (trackLength - runner1Pos)}');
    print('Runner 2: ${'*' * (trackLength - runner2Pos)}\n');
  }
 
  // Determine the winner
  if (runner1Pos >= trackLength) {
    print('Runner 1 wins!');
  } else {
    print('Runner 2 wins!');
  }
}

// Créez une boucle qui génère une séquence de nombres suivant une règle simple :
// chaque nombre de la séquence est la somme des deux nombres précédents.
// La boucle do while doit afficher la séquence jusqu'à ce que la somme 
// des nombres de la séquence dépasse un nombre maximum déterminé au préalable.

void sumSequence() {
  int maxNumber = 100;
  int num1 = 0;
  int num2 = 1;
  int sum = 0;
  do {
    sum += num1 + num2;
    print("Somme : + $num1 + $num2 = $sum");
    num1 = num2;
    num2 = sum;
  } while (sum <= maxNumber);
}

void main(List<String> args) {
  
  // numberList();
  // numberListCorrection();

  // evenNumber();
  
  // race();
  // raceCorrection();

  sumSequence();
}