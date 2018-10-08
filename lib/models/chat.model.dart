class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});

  static List<ChatModel> dummyData = [
    _getDummy(name: 'Dug'),
    _getDummy(name: 'Todd'),
    _getDummy(name: 'Micheal'),
    _getDummy(name: 'Janet'),
    _getDummy(name: 'Cassy'),
    _getDummy(name: 'Jessica'),
    _getDummy(),
    _getDummy(),
    _getDummy(),
    _getDummy(),
  ];

  static ChatModel _getDummy({String name = 'Paul'}) {
    return ChatModel(
        name: name,
        message: "Really cool and dope",
        time: "15:30",
        avatarUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/1200px-Node.js_logo.svg.png");
  }
}
