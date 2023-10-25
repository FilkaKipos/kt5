import 'package:flutter/material.dart';
import 'package:kt5/models/Tcar.dart';

class CarsInf extends StatelessWidget {
  final Car car;
  final int index;
  const CarsInf({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Color.fromARGB(255, 196, 174, 221),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        isThreeLine: true,
        title: Text(car.car),
        subtitle: Text("${car.model} price: ${car.price}"),
        trailing: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        leading: Column(
          children: [
            Icon(Icons.close_outlined,color: Color.fromARGB(255, 3, 76, 110),),
            SizedBox(height: 5),
            Text(index.toString())
          
          ],
        ),
        
        ),
      );
  }
}
