import 'package:flutter/material.dart';
import 'package:grid_view/main.dart';

class Item {
  String id;
  String name;
  String flag;
  String sqr;
  String population;

  Item({required this.id, required this.name, required this.flag, required this.sqr, required this.population});
}

class MyGridViewPage extends StatelessWidget {
  final List<Item> items = [
    Item(id:'1',name: 'Нигерия',flag: 'Image/flag/Flag_of_Nigeria.svg.png',sqr:'923 768',population:'206 139 589' ),
    Item(id:'2',name: 'Египет',flag: 'Image/flag/Flag_of_Algeria.svg.png',sqr:'1 010 407',population:'102 334 404' ),
    Item(id:'3',name: 'Конго (ДРК)',flag: 'Image/flag/Flag_of_the_Democratic_Republic_of_the_Congo.svg.png',sqr:'2 344 858',population:'89 561 403' ),
    Item(id:'4',name: 'Танзания',flag: 'Image/flag/Flag_of_Tanzania.svg.png',sqr:'	945 087',population:'61 498 437' ),
    Item(id:'5',name: 'Южная Африка',flag: 'Image/flag/Flag_of_South_Africa.svg.png',sqr:'	1 219 090',population:'59 308 690' ),
    Item(id:'6',name: 'Эфиопия',flag: 'Image/flag/Flag_of_Ethiopia.svg.png',sqr:'	1 104 300',population:'114 963 588' ),
    Item(id:'7',name: 'Кения',flag: 'Image/flag/Flag_of_Kenya.svg.png',sqr:'	580 367',population:'54 985 698' ),
    Item(id:'8',name: 'Алжир',flag: 'Image/flag/Flag_of_Algeria.svg.png',sqr:'	2 381 741',population:'43 851 044' ),
    Item(id:'9',name: 'Судан',flag: 'Image/flag/Flag_of_Sudan.svg.png',sqr:'	1 861 484',population:'44 909 353' ),
    Item(id:'10',name: 'Мадагаскар',flag: 'Image/flag/Flag_of_Madagascar.svg.png',sqr:'	587 041',population:'27 691 018' ),
    Item(id:'11',name: 'Уганда',flag: 'Image/flag/Flag_of_Uganda.svg.png',sqr:'	241 038',population:'46 103 165' ),
    Item(id:'12',name: 'Марокко',flag: 'Image/flag/Flag_of_Yamal-Nenets_Autonomous_District.svg.png',sqr:'446 550',population:'36 910 560' ),
  ];

  MyGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView country'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(items.length, (index) {
          return GridItem(
            item: items[index],
          );
        }),
      ),
    );
  }
}