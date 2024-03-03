import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/chat_model.dart';

import '../style/theme.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                chat.image,
                width: 58,
                height: 58,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            chat.name,
                            style: customTextStyle,
                          ),
                          Text(
                            chat.messageDate,

                          )
                        ],
                      ),
                      Text(
                        chat.mostRecentMessage,
                        style: const TextStyle(
                          color: Colors.black45, fontSize: 16
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}


