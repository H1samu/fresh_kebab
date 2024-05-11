import 'package:fresh_kebab/screens/vacancy/vacancy_model/vacancy_model.dart';

class WorkRepository {
  static List<WorkerModel> courier = [
    WorkerModel(
      imagePath: "assets/images/vacancy/courier.jpg",
      textPost: "Курьер",
      textDescription1: "2500 рублей оклад.",
      textDescription2: "15 рублей за заказ + 6 рублей за 1 км.",
      textDescription3: "Зарплата в конце смены.",
      textDescription4: "Рабочая смена с 9:00 до 23:00.",
      textDescription5: "Подробности по телефону:",
      textDescription6: "89821245455 Настя. Telegram, WhatsApp, Viber.",
    ),
  ];

  static List<WorkerModel> pizzaMaker = [
    WorkerModel(
      imagePath: "assets/images/vacancy/pizza_maker.jpg",
      textPost: "Пиццемейкер",
      textDescription1: "Работа по графику 2/2.",
      textDescription2: "Зарплата почасовая 185 рублей в час.",
      textDescription3: "Рабочая смена с 9:00 до 23:00.",
      textDescription4: "Подробности по телефону:",
      textDescription5: "89127445656 Ренат. Telegram, WhatsApp, Viber.",
    ),
  ];

  static List<WorkerModel> cleaner = [
    WorkerModel(
      imagePath: "assets/images/vacancy/cleaner.jpg",
      textPost: "Уборщица",
      textDescription1: "Зарплата от 1400 рублей за смену.",
      textDescription2: "Работа по графику 2/2.",
      textDescription3: "Подробности по телефону:",
      textDescription4: "89127445656 Ренат. Telegram, WhatsApp, Viber.",
    ),
  ];

  static List<WorkerModel> chef = [
    WorkerModel(
      imagePath: "assets/images/vacancy/chef.jpg",
      textPost: "Повар",
      textDescription1: "Зарплата до 50000 рублей.",
      textDescription2: "Сменный график 3/1, 5/1 ",
      textDescription3: "Подробности по телефону:",
      textDescription4: "89127445656 Ренат. Telegram, WhatsApp, Viber.",
    ),
  ];
}
