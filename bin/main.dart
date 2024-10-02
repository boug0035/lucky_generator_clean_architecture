import '../lib/domain/lukcy.dart';
import '../lib/infrastructure/lucky_generator.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Please provide a list of names.");
    return;
  }

  LuckyGenerator luckyGenerator = LuckyGenerator();

  for (var name in arguments) {
    String capitalizedName = name[0].toUpperCase() + name.substring(1);

    int luckyNumber = luckyGenerator.generateLuckyNumber();
    Lucky luckyInstance = Lucky(luckyNumber);

    // Output the message
    print(
        "Hello $capitalizedName. Your lucky number is ${luckyInstance.luckyNumber}.");
  }
}
