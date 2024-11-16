import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/other_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://scontent.fpac2-2.fna.fbcdn.net/v/t39.30808-6/425386550_3202601386701548_358931755254050777_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHCueDtFmBMzo7XSODRya3TITPIT0zr3OchM8hPTOvc5-IH4Z9vtMHP7lyGt79RWfA&_nc_ohc=V7nfGxHjLSkQ7kNvgHhvr03&_nc_pt=1&_nc_zt=23&_nc_ht=scontent.fpac2-2.fna&_nc_gid=AEAQzEcFwCZ3QZ5QYa1qqfv&oh=00_AYBnoWOiu8m7BDnJySDaLHut5qIreubyJTeM88C7WQkhAQ&oe=673ED6BA"),
              backgroundColor: Colors.transparent,
            ),
          ),
          title: const Text("Mi Neko Lindo 🥰"),
          centerTitle: false),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => (index % 2 == 0) ? const OtherMessageBubble() : const MyMessageBubble(),
          )),
          const Text("Mundo")
        ]),
      ),
    );
  }
}
