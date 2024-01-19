void main() {
  int age = 2;
  double height = 2.5;
  double width = 3.5;
  String name = "John";
  bool isStudent = true;
  List<String> hobbies = ["Reading", "Swimming", "Programming"];
  Map<String, dynamic> studentInfo = {
    "name": "John",
    "age": 20,
    "isStudent": true
  };
  // 输出变量值
  print("Age: $age");
  print("Height: $height");
  print("s= ${width * height}");
  print("Name: $name");
  print("Is Student: $isStudent");
  print("Hobbies: $hobbies");
  print("Student Info: $studentInfo");
  print(10 ~/ 3); //3  商

  // 修改变量值
  age = 30;
  height = 180.0;
  name = "Jane";
  isStudent = false;
  hobbies = ["Painting", "Dancing", "Singing"];
  studentInfo = {"name": "Jane", "age": 25, "isStudent": false};
  // 再次输出变量值
  print("Updated Age: $age");
  print("Updated Height: $height");
  print("Updated Name: $name");
  print("Updated Is Student: $isStudent");
  print("Updated Hobbies: $hobbies");
  print("Updated Student Info: $studentInfo");

  // 创建对象
  Human person = Human("John", 70.0, 180.0);
  print(person.info()); // 输出: John
}

class Human {
  String name = '';
  double weight = 0;
  double height = 0;

  // 方法
  String info() {
    return "Name: $name, Weight: $weight, Height: $height";
  }

  // 构造函数
  Human(String name, double weight, double height) {
    this.name = name;
    this.weight = weight;
    this.height = height;
  }
}
