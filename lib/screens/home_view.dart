import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:search_or_filter_listview_with_getx/controllers/home_controller.dart';

class HomeView extends GetView<HomeControlller> {
  HomeView({super.key});
  HomeControlller controlller = Get.put(HomeControlller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Filter"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => controlller.filterPlayer(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid,),
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Search",
                hintStyle:const TextStyle(color: Colors.black),
                suffixIcon: const Icon(Icons.search,color: Colors.black,),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Obx(() => ListView.builder(
                      itemCount: controlller.foundPlayers.value.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(
                          controlller.foundPlayers.value[index]['name'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            controlller.foundPlayers.value[index]['country']),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
