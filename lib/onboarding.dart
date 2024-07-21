import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "between_method.dart";

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 116),
      child: Container(
        width: 329,
        height: 478,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'microchelik.svg',
              width: 213,
              height: 277.78,
            ),
            SizedBox(height: 32),
            CustomWidget(),
            SizedBox(height: 36.22),
            Text(
              'Управляй своими задачами',
              style: TextStyle(
                  fontSize: 28, height: 1.2857, fontFamily: 'RobotoMono'),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              "Вы можете легко управлять всеми своими задачами в UpTodo",
              style: TextStyle(
                  fontSize: 16, height: 1.5, fontFamily: 'RobotoMono'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 56, left: 32),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Кнопка 1'),
          ),
        ),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(bottom: 56, right: 32),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Кнопка 2'),
          ),
        ),
      ],
    );
  }
}

class CustomWidget extends StatefulWidget {
  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  int paintedElement = 0;
  int count = 5;

  void updateState(int index) {
    setState(() {
      paintedElement = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        count,
        (index) => Flexible(
          flex: 20,
          child: Container(
            width: 10,
            height: 4,
            decoration: BoxDecoration(
              color: index == paintedElement ? Colors.black : Colors.grey,
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
        ),
      ).insertBetween(Spacer()),
    );
  }
}
