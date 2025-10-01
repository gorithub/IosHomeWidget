import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String appGroupId = "group.com.example.ioshomewidget";
String iOsWidgetName = "HomeScreenWidget";

updateWidgetFun() async {
  await HomeWidget.saveWidgetData<String>('title', 'Flutter');
  await HomeWidget.saveWidgetData<String>('description', 'App Developement');
  HomeWidget.updateWidget(iOSName: iOsWidgetName);
 
}

@override
  void initState() {
    super.initState();
    HomeWidget.setAppGroupId(appGroupId)
;  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: Text('Ios Home Widget'),
      backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => updateWidgetFun(),
          
          child: Text('Update Widget'),
      ),
    ));
  }
}