import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'final.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController controller = TextEditingController();

  TextEditingController controller1 = TextEditingController(text: '+998 ');

  String data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma\'lumotingiz '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data,
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            TextField(
              keyboardType: TextInputType.text,
              maxLength: 20,
              controller: controller,
              decoration: InputDecoration(
                  helperStyle: TextStyle(color: Colors.blue),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3)),
                  helperText: 'enter your name',
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 14,
              controller: controller1,
              decoration: InputDecoration(
                  helperStyle: TextStyle(color: Colors.red),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3)),
                  helperText: 'Phone number',
                  border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  // controller.text.length>0?Text('data'):controller.text.length==0;
                  if (controller.text.length > 0 &&
                      /* controller.text.length <= 20&& */ controller1
                              .text.length ==
                          14) {
                    Navigator.pushNamed(context, 'final');
                  } else {
                    setState(() {
                      data =
                          'Iltimos ma\'lumotingizni tekshiring to`ldirilmagan bo\'ishi mumkin!!!';
                    });
                  }

                  // Text('data');
                },
                child: Text('Tekshirish'))
          ],
        ),
      ),
    );
  }
}
