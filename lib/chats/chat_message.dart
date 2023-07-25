
import 'package:chatbot_app/models/model.dart';
// import 'package:chatbot_app/colors/colors.dart';

import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget(
      {super.key, required this.text, required this.chatMessageType});

  final String text;
  final ChatMessageType chatMessageType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      
      padding: const EdgeInsets.all(8),
      color: chatMessageType == ChatMessageType.bot
          ? const Color.fromARGB(255, 174, 181, 221)
          : Colors.white,
          // : const Color.fromARGB(255, 223, 225, 244),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          chatMessageType == ChatMessageType.bot
              ? Container(
                  
                  margin: const EdgeInsets.only(right: 16.0),

                  child:   CircleAvatar(
                    
                    // backgroundColor:  Color.fromRGBO(16, 163, 127, 1),
                    child: Image.asset(
                      'assets/images/bot-final.png',
                       
                      
                      // color: Colors.white,
                      // scale: 1.5,
                    ),
                  ),
                )
                
              : Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                ),
                
          Expanded(
            
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              
              
              children: <Widget>[
                Container(
                  // margin: const EdgeInsets.symmetric(vertical: 5),
                  // padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  
                  // padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
          ),
          chatMessageType == ChatMessageType.user? const SizedBox.shrink() : const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,

              ),
              Icon(Icons.thumb_down_alt_outlined,
              color: Colors.white),
            ],
          )
        ],
       
      ),
      
    );
  }
}