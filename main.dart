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

(String, String) currentDateTime() {
  List<String> months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  DateTime currentDT = new DateTime.now();
  String currentDTinString = currentDT.toString();

  String year = currentDTinString.substring(0, 4);
  int monthInt = int.parse(currentDTinString.substring(5, 7));
  String month = months[monthInt-1];
  String day = currentDTinString.substring(8, 10);
  String date = "$day-$month-$year";

  String time = currentDTinString.substring(11, 16);

  return (time, date);
}


void writeDB() {
  File file = File("usr_database.csv");
  var (fagName, fagAmount, fagPrice) = userInput();
  var (time, date) = currentDateTime();
  file.writeAsStringSync("$date, $time, ${fagName[0].toUpperCase()}${fagName.substring(1, )}, ${fagAmount}, ${fagPrice}\n", mode: FileMode.append);
}

void main() {
  writeDB();
}