import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/core/components/appbar.dart';
import 'package:work/core/components/card.dart';
import 'package:work/data/rooms_data.dart';
import 'package:work/model/room_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RoomModel> _temp = [];
  @override
  void initState() {
    _temp = RoomsData.roomsData;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<RoomModel> results = [];
    if (enteredKeyword.isEmpty) {
      results = RoomsData.roomsData;
    } else {
      results = RoomsData.roomsData
          .where((user) => user.nameRoom
              .toString()
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _temp = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.appBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Card(
                child: CupertinoSearchTextField(
                  onChanged: (text) => _runFilter(text),
                ),
              ),
            ),
            SizedBox(
              height: 700,
              child: ListView.builder(
                itemCount: _temp.length,
                itemBuilder: (_, __) {
                  return _temp.isNotEmpty
                      ? Cards.cards(
                          context,
                          key: ValueKey(_temp[__].idRoom),
                          index: __,
                          roomName: _temp[__].nameRoom,
                          price: _temp[__].imgRoom,
                        )
                      : const Text('no');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
