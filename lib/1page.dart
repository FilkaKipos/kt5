import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kt5/core/network_status.dart';
import 'package:kt5/models/cars.dart';
import 'package:kt5/models/Tcar.dart';
import 'package:kt5/widgets/cars_inf.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  String url = 'https://myfakeapi.com/api/cars';
  Dio client = Dio();
  List<Car> cars = [];
  NetworkStatus networkStatus = NetworkStatus.values[0];

  void getNetworkData() async {
    networkStatus = NetworkStatus.loading;
    setState(() {});
    var response = await client.get(url);
    cars = CarData.fromJson(response.data).cars;
    networkStatus = NetworkStatus.success;
    setState(() {});
  }

  @override
  void initState() {
    getNetworkData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (networkStatus == NetworkStatus.loading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                    onPressed: getNetworkData,
                    child: const Text(
                      "Перезагрузить",
                    )),
              const SizedBox(height: 20),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: cars.length,
                  itemBuilder: (context, index) {
                    return CarsInf(car: cars[index], index: index+1,);
                  })
            ],
          ),
        ),
      ),
    );
  }
}