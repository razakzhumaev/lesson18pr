void main(List<String> args) {
  // task1(null);
  // task2(a: 100);
  // task3(name: 'razak', age: 18);
  task5(null);
  // phone(
  //   name: 'iphone',
  //   model: 'XS',
  //   color: 'Green',
  //   weight: '200gramm',
  // );
  // task4(10);
}

void task1(String? name) {
  print('name == ${name ?? "user"}');

  // if (name == null) {                   // второй способ
  //   name = 'user';
  // }
  // print('name == $name');
}

void task2({required a, int? b}) {
  // if (b == null) {                      // первый вариант
  //   b = 2;
  // }
  int c = a + (b ?? 2); // второй вариант
  print(c);
}

void task3({required String name, int? age}) {
  print('Имя:$name');
  print('Возраст:${age ?? "unknown"}');
}

void task5(bool? isRain) {
  print("На улице дождь? ${isRain == null ? 'false' : isRain}");
}

void phone({
  required String name,
  required String model,
  required String color,
  String? length,
  String? width,
  String? weight,
}) {
  print('Название : $name');
  print('Модель : $model');
  print('Цвет : $color');
  print('Длина : ${length ?? "unknown"}');
  print('Ширина : ${width ?? "unknown"}');
  print('Вес : ${weight ?? "unknown"}');
}

task4(int? number) {
  if (number != null) {
    if (number > 3) {
      number += 10;
    } else {
      number -= 10;
    }
  } else if (number == null) {
    print('-');
    return;
  }
  print(number);
}
