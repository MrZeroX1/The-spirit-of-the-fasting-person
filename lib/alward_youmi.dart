import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class planning extends StatefulWidget {
  const planning({super.key});

  @override
  State<planning> createState() => _planningState();
}

class _planningState extends State<planning> {
  String _salutation =
      "Mr."; //This is the selection value. It is also present in my array.
  final _salutations = [
    "Mr.",
    "Mrs.",
    "Master",
    "Mistress"
  ]; //This is the array for dropdown
  TextEditingController _date = TextEditingController();
  TextEditingController _countController = TextEditingController(text: '30');
  TextEditingController taqseemController = TextEditingController();
  List listItem = ['مره في اليوم ', 'مرتين في اليوم', 'ثلاث مرات في اليوم'];
  String dropdownValue = 'مرتين في اليوم';
  String fullName = '';
  String valueChoose = 'مرتين في اليوم';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           
            appBar: AppBar(
              leading: Icon(Icons.auto_stories),
              backgroundColor: Color.fromARGB(255, 95, 64, 55),
              title: Center(
                child: Text(
                  "ختم القران",
                  style: TextStyle(
                      color: Color.fromARGB(255, 231, 224, 222),
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                      fontFamily: "IBM Plex Sans Arabic"),
                ),
              ),
            ),
            body: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(28),
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text("تاريخ البدأ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 95, 43, 45),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "IBM Plex Sans Arabic")),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 95, 43, 45),
                    thickness: 1,
                  ),
                  TextField(
                    controller: _date,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_today_outlined),
                        labelText: "اختر تاريخ البدأ"),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2024));
                      if (pickeddate != null) {
                        setState(() {
                          _date.text =
                              DateFormat('yyyy-MM-dd').format(pickeddate);
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(" المدة",
                        style: TextStyle(
                            color: Color.fromARGB(255, 95, 43, 45),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "IBM Plex Sans Arabic")),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 95, 43, 45),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                      controller: _countController,
                      decoration: InputDecoration(
                        hintText: 'بالأيام ، مثال : 30 يوم',
                        icon: Icon(Icons.pending_actions_outlined),
                        border: OutlineInputBorder(),
                        labelText: ' المده',
                      ),
                      onChanged: (text) {
                        setState(() {
                          fullName = text;
                          // fullName = countController.text;
                        });
                      }),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(" التقسيم",
                        style: TextStyle(
                            color: Color.fromARGB(255, 95, 43, 45),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "IBM Plex Sans Arabic")),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 95, 43, 45),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DropdownButton(
                    value:
                        valueChoose, //implement initial value or selected value
                    onChanged: (value) {
                      setState(() {
                        //set state will update UI and State of your App
                        valueChoose =
                            value.toString(); //change selectval to new value
                      });
                    },
                    items: listItem.map((itemone) {
                      return DropdownMenuItem(
                          value: itemone, child: Text(itemone));
                    }).toList(),
                  )
                ])));
  }
}
