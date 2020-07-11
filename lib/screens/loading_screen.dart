
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:skyhigh_climate/screens/location_screen.dart';
import 'package:skyhigh_climate/services/weather.dart';






class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {



  void getLocationData() async{

     var weatherData = await  WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));


  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 100.0,
          ),
        ),
    );
  }
}
