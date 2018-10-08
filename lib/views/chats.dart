import 'package:flutter/material.dart';
import '../models//chat.model.dart';

class ChatsView extends StatefulWidget {
  @override
  ChatsViewState createState() {
    return new ChatsViewState();
  }
}

class ChatsViewState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    final data = ChatModel.dummyData;

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, i) {
        return Column(children: <Widget>[
          Divider(height: 10.0),
          buildListTile(context, data, i)
        ]);
      },
    );
  }

  ListTile buildListTile(BuildContext context, List<ChatModel> data, int i) {
    return ListTile(
      leading: CircleAvatar(
          foregroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(data[i].avatarUrl)),
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          data[i].name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          data[i].time,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontSize: 14.0
          ),
        )
      ]),
      subtitle: Container(
        padding: EdgeInsets.only(top: 5.0),
        child: Text(
          data[i].message,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
