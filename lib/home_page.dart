import 'package:flutter/material.dart';
import 'package:flutter_application_1/list_item.dart';
import 'package:flutter_application_1/makanan.dart';
import 'package:flutter_application_1/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Makanan> listMenu = Makanan.dummyData;
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.list_alt,
                size: 20,
              ),
              Text(
                'List Menu',
                style: headerH1,
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: listMenu.length,
              itemBuilder: (context, index) {
                return ListItem(menu: listMenu[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
