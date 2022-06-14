import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_project/controllers/count_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final countController = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: GetX<CountController>(
        builder: (countController) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),

                  Text(
                    '${countController.count}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ElevatedButton(onPressed: (){
                  countController.clear();
                }, child: Text('Reset'))
              ],
            ),
          );
        }
      ),


          floatingActionButton : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  // label: GetX<CountController>(
                  //   builder: (countController){
                  //     return Text(countController.count.toString());
                  //   },
                  // ),
                  onPressed: (){
                    countController.increment();
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  // label: GetX<CountController>(
                  //   builder: (countController){
                  //     return Text(countController.count.toString());
                  //   },
                  // ),
                    onPressed: (){
                      countController.decrement();
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.remove)
                ),
              ),
            ],
          )

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
