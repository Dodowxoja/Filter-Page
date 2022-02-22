import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.center,
                    child: const BackButton(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.31,
                    alignment: Alignment.center,
                    child: const Text('HOTEL BOOKING'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.05,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 13,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
