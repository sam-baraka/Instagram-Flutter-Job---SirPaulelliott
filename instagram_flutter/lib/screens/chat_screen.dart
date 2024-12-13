import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MessagesList(),
      ),
    );
  }
}

class MessagesList extends StatelessWidget {
  MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return MessageTile(isMe: index % 2 == 0);
        },
        separatorBuilder: (context, index) {
          if (index % 3 == 0) {
            return const Center(
                child: Text(
              'Today 9:30 pm',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9D9D9D)),
            ));
          } else {
            return const SizedBox.shrink();
          }
        },
        itemCount: 7);
  }
}

class MessageTile extends StatelessWidget {
  final bool isMe;

  const MessageTile({super.key, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return isMe
        ? Row(
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Hi Borther! Not sure if the address is correct for this job.',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        : Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/woman.png'),
              ),
              const SizedBox(
                width: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Let me check but I think we had it right',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              )
            ],
          );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final bool goBack;
  const CustomAppBar({super.key, required this.context, this.goBack = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: goBack ? Colors.black : Color(0xffF8F8F8),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          goBack
              ? InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    CupertinoIcons.chevron_back,
                    color: Colors.white,
                  ),
                )
              : SizedBox.shrink(),
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: const Color(0xffF8F8F8),
                child: Image.asset(
                  'assets/woman.png',
                ),
              ),
              title: Text(
                'Anna Paul',
                style: TextStyle(
                    color: goBack ? Colors.white : null,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Active 15 min ago',
                style: TextStyle(
                    color: goBack ? Colors.white : null,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(MediaQuery.of(context).size.width, 70);
}
