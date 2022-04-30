import 'package:flutter/material.dart';
import 'package:weather_app/screens/wether_details.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Weather App',
        ),
      ),

      //The body of the screenWithFixedCrossAxisCount
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const  WeatherDetails(city: 'Abuja',)));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('images/beautiful_4.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(226, 59, 59, 57),
                          ),
                          child: const Text(
                            'Abuja',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                 const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeatherDetails(
                                    city: 'Delta',
                                  )));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('images/beautiful_5.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(226, 59, 59, 57),
                          ),
                          child: const Text(
                            'Delta',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //2nd line
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeatherDetails(
                                    city: 'Edo',
                                  )));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('images/beautiful_6.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(226, 59, 59, 57),
                          ),
                          child: const Text(
                            'Edo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeatherDetails(
                                    city: 'Jos',
                                  )));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('images/beautiful_7.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(226, 59, 59, 57),
                          ),
                          child: const Text(
                            'Jos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //3rd line
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeatherDetails(
                                    city: 'Lagos',
                                  )));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('images/beautiful_8.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(226, 59, 59, 57),
                          ),
                          child: const Text(
                            'Lagos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeatherDetails(
                                    city: 'Kwara',
                                  )));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/beautiful_9.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(226, 59, 59, 57),
                          ),
                          child: const Text(
                            'Kwara',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
