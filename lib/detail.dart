// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String title;

  const Detail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    final title =
        args != null && args.containsKey('title') ? args['title'] : 'No Title';

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(title),
        titleTextStyle: const TextStyle(fontSize: 20),
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHI556ipCz6mU1jMCAJIfYbp92k426Uxb4ag&s',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
              decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Pendaftaran: Januari 20 - 2 Februari',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a rhoncus libero. Aliquam sollicitudin quam non lectus malesuada efficitur. Nullam a sem nec lorem dignissim lacinia sed a mauris. Duis condimentum lacinia tortor, auctor pretium ipsum. Curabitur et metus accumsan, efficitur massa sed, dignissim orci. Nullam varius dolor iaculis magna luctus accumsan. Integer sagittis auctor feugiat. Proin sagittis sit amet metus a elementum. Duis ut elementum lectus, eget porta erat. Nunc lorem tellus, iaculis dignissim congue at, tristique a risus. Proin non dui sed massa consequat condimentum.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
