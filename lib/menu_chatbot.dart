import 'package:flutter/material.dart';
import 'package:senior_project/color.dart';
import 'package:senior_project/bottom.dart';

class chatBot extends StatefulWidget {
  @override
  State<chatBot> createState() => _chatBotState();
}

class _chatBotState extends State<chatBot> {
  List<ChatMessage> messages = []; // รายการข้อความในการสนทนา

  TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    // ประมวลผลข้อความที่ผู้ใช้ป้อนที่นี่
    // สร้าง ChatMessage และเพิ่มลงในรายการ messages
    ChatMessage message = ChatMessage(
      text: text,
      isUser: true,
    );
    setState(() {
      messages.add(message);
    });
    // เรียกฟังก์ชันที่ใช้ในการตอบกลับจาก Chatbot
    _handleChatBotResponse();
  }

  void _handleChatBotResponse() {
    // ทำการประมวลผลและรับคำตอบจาก Chatbot ที่นี่
    // ในตัวอย่างนี้เราจะใช้ข้อความที่เป็นแบบสุ่ม
    String response = "คำตอบจาก Chatbot";
    ChatMessage chatBotMessage = ChatMessage(
      text: response,
      isUser: false,
    );
    setState(() {
      messages.add(chatBotMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // ส่วนแสดงประวัติข้อความ
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return messages[index];
              },
            ),
          ),
          // ส่วนในการป้อนข้อความ
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    onSubmitted: _handleSubmitted,
                    decoration: InputDecoration(
                      hintText: 'พิมพ์ข้อความ...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Card(
        color: isUser ? Colors.blue : Colors.green,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
