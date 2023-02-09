import 'package:get/state_manager.dart';

class HomeControlller extends GetxController {
  final List<Map<String, dynamic>> allPlayers = [
    {"name": "Babar Azam", "country": "Pakistan"},
    {"name": "Rizwan", "country": "Pakistan"},
    {"name": "Jos Buttler", "country": "England"},
    {"name": "Shakib-ul-Hassan", "country": "Bangladash"},
    {"name": "Glenn Maxwell", "country": "Australlia"},
    {"name": "Galye", "country": "West Indies"},
    {"name": "Nabi", "country": "Afghanistan"},
    {"name": "Zahid", "country": "UAE"},
    {"name": "Skinder Raza", "country": "Zimbawa"},
    {"name": "Rose Tayler", "country": "New Zealand"},
    {"name": "Markum", "country": "South Africa"},
    {"name": "Malanga", "country": "Sri lanka"},
    {"name": "Shoiab Akhtar", "country": "Pakistan"},
    {"name": "Aaron Finch", "country": "Australlia"},
  ];

  Rx<List<Map<String, dynamic>>> foundPlayers =
      Rx<List<Map<String, dynamic>>>([]);

  @override
  void onInit() {
    super.onInit();
    foundPlayers.value = allPlayers;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  
  }

    void filterPlayer(String playerName) {
      List<Map<String, dynamic>> results = [];
      if (playerName.isEmpty) {
        results = allPlayers;
      } else {
        results = allPlayers
            .where((element) => element["name"]
                .toString()
                .toLowerCase()
                .contains(playerName.toLowerCase()))
            .toList();
      }
      foundPlayers.value = results;
    }
}
