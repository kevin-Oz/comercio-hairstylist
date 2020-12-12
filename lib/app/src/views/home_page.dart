import 'package:flutter/material.dart';
import 'package:hairstylist/app/src/widgets/corte_seleccionado.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedDate = 18;
  var selectedBarber = 'QUIFF';
  var selectedTime = '09:00';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'RuffBookig',
          style: TextStyle(
              fontFamily: 'FirSans', fontSize: 20.0, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4.0)
                ], color: Colors.white),
              ),
              Positioned(
                top: 20.0,
                left: 15.0,
                right: 15.0,
                child: Container(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      getDate(18, 'Lun'),
                      SizedBox(
                        width: 20.0,
                      ),
                      getDate(19, 'Mar'),
                      SizedBox(
                        width: 20.0,
                      ),
                      getDate(20, 'Mie'),
                      SizedBox(
                        width: 20.0,
                      ),
                      getDate(21, 'Jue'),
                      SizedBox(
                        width: 20.0,
                      ),
                      getDate(22, 'Vie'),
                      SizedBox(
                        width: 20.0,
                      ),
                      getDate(23, 'Sab'),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 35.0,
          ),
          Center(
            child: Text(
              'RUFFIANS',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontFamily: 'Nunito',
                  fontSize: 30.0,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
              height: 175.0,
              child: ListView(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                scrollDirection: Axis.horizontal,
                children: [
                  getBarber('assets/corte1.jpg', 'QUIFF'),
                  SizedBox(
                    width: 15.0,
                  ),
                  getBarber('assets/corte2.jpg', 'BEARD'),
                  SizedBox(
                    width: 15.0,
                  ),
                  getBarber('assets/corte3.jpg', 'SCUMBAG'),
                  SizedBox(
                    width: 15.0,
                  ),
                  getBarber('assets/corte4.jpg', 'EXECUTIVE'),
                  SizedBox(
                    width: 15.0,
                  ),
                  getBarber('assets/corte5.jpg', 'FADE'),
                  SizedBox(
                    width: 15.0,
                  ),
                  getBarber('assets/corte6.jpg', 'POMPADOUR'),
                  SizedBox(
                    width: 15.0,
                  ),
                  getBarber('assets/corte7.jpg', 'UNDERCUT'),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              )),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                getTime('09.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('09.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('10.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('10.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('11.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('11.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('12.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('12.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('13.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('13.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('14.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('14.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('15.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('15.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('16.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('16.30'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('17.00'),
                SizedBox(
                  width: 10.0,
                ),
                getTime('17.30'),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    'CORTE $selectedBarber $selectedDate $selectedTime',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontFamily: 'FirSans',
                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 15.0,
              ),
              getService('Ruffians Services', 18),
              getService('Ruffians', 9),
            ],
          )
        ],
      ),
    );
  }

  Color switchTimeColor(time) {
    if (time == selectedTime) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchTimeContentColor(time) {
    if (time == selectedTime) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  Widget getTime(time) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: switchTimeColor(time)),
      width: 50.0,
      height: 75.0,
      child: InkWell(
        onTap: () => {selectTime(time)},
        child: Center(
          child: Text(
            time,
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: switchTimeContentColor(time)),
          ),
        ),
      ),
    );
  }

  Widget getBarber(String imgPath, String name) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            InkWell(
              onTap: () {
                selectBarber(name);
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: getSelectedBarber(name),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          name,
          style: TextStyle(fontFamily: 'FirSans', fontSize: 15.0),
        )
      ],
    );
  }

  selectBarber(name) {
    setState(() {
      selectedBarber = name;
    });
  }

  Color getSelectedBarber(name) {
    print(selectedBarber);
    print(selectedDate);
    print(selectedTime);
    if (name == selectedBarber) {
      return Colors.green.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  Widget getService(String name, int price) {
    return Container(
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Colors.black),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            '\$' + price.toString(),
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Colors.grey),
          ),
          IconButton(
            icon: Icon(Icons.check_box),
            highlightColor: Colors.red,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CorteSel(
                          corte: selectedBarber,
                          dia: selectedDate,
                          hora: selectedTime,
                          servicio: name,
                          costo: price)));
            },
          )
        ],
      ),
    );
  }

  Widget getDate(int date, String day) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: switchColor(date)),
      width: 60.0,
      height: 60.0,
      child: InkWell(
        onTap: () => {selectDate(date)},
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 7.0,
              ),
              Text(
                date.toString(),
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: switchContentColor(date)),
              ),
              Text(
                day,
                style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 15.0,
                    color: switchContentColor(date)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color switchColor(date) {
    if (date == selectedDate) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor(date) {
    if (date == selectedDate) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectDate(date) {
    setState(() {
      selectedDate = date;
    });
  }
}
