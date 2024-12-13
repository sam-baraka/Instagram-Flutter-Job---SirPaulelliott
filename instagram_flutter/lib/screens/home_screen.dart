import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/routes/router.gr.dart';
import 'package:instagram_flutter/screens/chat_screen.dart';
import 'package:instagram_flutter/screens/widgets/custom_text_field.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffF8F8F8),
            title: const Text(
              'Instagram Flutter',
            ),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xffF8F8F8)),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Column(
                        children: [
                          Text(
                            'Chats',
                            style: TextStyle(fontSize: 24),
                          ),
                          Expanded(child: ChatList(isDesktop: false)),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        CustomAppBar(context: context, goBack: false),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: MessagesList(),
                        )),
                      ],
                    )),
              ],
            ),
          ),
        );
      } else {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {},
              child: const Icon(
                Icons.add_rounded,
                size: 40,
                color: Colors.white,
              )),
          appBar: AppBar(
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            backgroundColor: Colors.white,
            actions: const [
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xffF8F8F8),
                child: Icon(
                  Icons.groups_2_outlined,
                  color: Color(0xff71839B),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xffF8F8F8),
                child: Icon(
                  Icons.contacts_outlined,
                  color: Color(0xff71839B),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xffF8F8F8),
                child: Icon(
                  Icons.settings,
                  color: Color(0xff71839B),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  name: 'email',
                  hint: 'Search here',
                  prefix: Icon(Icons.search, color: Color(0xff707680)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 33,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 6),
                        child: Text(
                          'All',
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 33,
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Text(
                          'Groups',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff707680)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 33,
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Text(
                          'Unread',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff707680)),
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(child: Expanded(child: ChatList())),
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Send new message',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
      }
    });
  }
}

class ChatList extends StatelessWidget {
  final bool isDesktop;
  const ChatList({super.key, this.isDesktop = true});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return ChatListTile(
            title: 'Tabish Bin Bahir',
            subtitle: 'Hi Tabish, how are you doing?',
            desktop: isDesktop,
            isSelected: index == 0,
            isGroup: index > 3);
      },
      itemCount: 7,
    );
  }
}

class ChatListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isGroup;
  final bool desktop;
  final bool isSelected;
  const ChatListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isGroup,
    required this.desktop,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedColor: Theme.of(context).primaryColor,
      onTap: () {
        if (desktop) {
          AutoRouter.of(context).push(const ChatRoute());
        }
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      leading: CircleAvatar(
        radius: 23,
        backgroundColor: const Color(0xffF8F8F8),
        child: isGroup
            ? const Icon(
                Icons.groups_2_outlined,
                color: Color(0xff71839B),
              )
            : Image.asset(
                'assets/person.png',
              ),
      ),
      title: Text(isGroup ? 'Group Name' : title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      trailing: Text(
        '1 hour ago',
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 13,
            fontWeight: FontWeight.w400),
      ),
      subtitle: isGroup
          ? Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Anna:',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500)),
              TextSpan(
                  text: subtitle,
                  style: const TextStyle(
                      color: Color(0xff707680),
                      fontSize: 13,
                      fontWeight: FontWeight.w400))
            ]))
          : Text(subtitle,
              style: const TextStyle(
                  color: Color(0xff707680),
                  fontSize: 13,
                  fontWeight: FontWeight.w400)),
    );
  }
}
