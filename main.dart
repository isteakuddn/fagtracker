import "dart:io";

(String, int, int) userInput() {
  stdout.write("Ciggerate Name: ");
  String? cigName = stdin.readLineSync();

  stdout.write("Amount of ${cigName![0].toUpperCase()}${cigName.substring(1, )}: ");
  int? cigAmount = int.parse(stdin.readLineSync()!);

  stdout.write("Per ${cigName[0].toUpperCase()}${cigName.substring(1, )} costs: ");
  int? cigPrice = int.parse(stdin.readLineSync()!);

  return (cigName, cigAmount, cigPrice);
}

void writeDB() {
  File file = File("usr_database.csv");
  var (fagName, fagAmount, fagPrice) = userInput();
  file.writeAsStringSync("${fagName[0].toUpperCase()}${fagName.substring(1, )}, ${fagAmount}, ${fagPrice}\n", mode: FileMode.append);
}

void main() {
  writeDB();
}