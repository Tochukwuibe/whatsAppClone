import 'package:flutter/material.dart';
import 'package:whats_app/views/calls.dart';
import 'package:whats_app/views/camera.dart';
import 'package:whats_app/views/chats.dart';
import 'package:whats_app/views/status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WhatsAppHomeState();
  }
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabCtrl;

  @override
  void initState() {
    this._tabCtrl = TabController(vsync: this, initialIndex: 1, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: this._getTabs(),
        actions: this._getActions(),
      ),
      body: this._getBody(),
      floatingActionButton: this._getActionButton(context),
    );
  }

  TabBar _getTabs() {
    return TabBar(
      controller: this._tabCtrl,
      indicatorColor: Colors.white,
      tabs: <Widget>[
        Tab(
            icon: Icon(
          Icons.camera,
          color: Colors.white,
        )),
        Tab(text: "CHATS"),
        Tab(text: "STATUS"),
        Tab(
          text: "CALLS",
        )
      ],
    );
  }

  TabBarView _getBody() {
    return TabBarView(
      controller: this._tabCtrl,
      children: <Widget>[CameraView(), ChatsView(), StatusView(), CallsView()],
    );
  }

  FloatingActionButton _getActionButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).accentColor,
      child: Icon(
        Icons.message,
        color: Colors.white,
      ),
      onPressed: () {
        print("Action pressed");
      },
    );
  }

  List<Widget> _getActions() {
    return [
        Icon(Icons.search),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
        Icon(Icons.more_vert)
    ];
  }
}
