/*
Objet User
 */


class User{
  late String pseudo;
  late String passeword;
  late String gender;
  late String imagePath;
  late DateTime birthday;
  late int age;
  late String about;
  final bool isDarkMode;

  User(this.pseudo, this.passeword, this.gender, this.imagePath, this.birthday, this.age, this.about, this.isDarkMode);
}