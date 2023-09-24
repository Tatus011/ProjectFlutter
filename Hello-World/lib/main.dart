import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "name": "Bruno Fernandes",
        "imageUrl": "https://pbs.twimg.com/media/E0AIfSTWQAA2Jxf.jpg:large",
        "Jabatan": "Direktur"
      },
      {
        "name": "Marcus Rashford",
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL11hAqhHdBottbiL4KDr8GQ-lMWPjmKyBfA&usqp=CAU",
        "Jabatan": "Wakil Direktur"
      },
      {
        "name": "Rasmus Højlund",
        "imageUrl":
            "https://i2-prod.mirror.co.uk/incoming/article30528963.ece/ALTERNATES/s1200c/0_Atalanta-BC-v-Hellas-Verona-Serie-A.jpg",
        "Jabatan": "Sekretaris"
      },
      {
        "name": "Alejandro Garnacho",
        "imageUrl": "https://pbs.twimg.com/media/FxeR5jrWABADwz4.jpg",
        "Jabatan": "Wakil Sekretaris"
      },
      {
        "name": "Casemiro",
        "imageUrl":
            "https://img.asmedia.epimg.net/resizer/iLHPew_LQJRS3EQuHvNLBtXwvvA=/1200x1200/filters:focal(639x226:649x236)/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/Y4DDO34OWNABREHPWZSYEW53YQ.jpg",
        "Jabatan": "Bendahara"
      },
      {
        "name": "Mason Mount",
        "imageUrl":
            "https://assets.pikiran-rakyat.com/crop/0x0:1080x1068/x/photo/2022/01/10/374582084.jpg",
        "Jabatan": "Wakil Bendahara"
      },
    ];
    return MaterialApp(
      title: 'Praktikum',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffe5e5e5),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Project Uji Coba'),
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {}, // add onPressed callback
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    item["imageUrl"] ?? "",
                    width: 50,
                    height: 50,
                  ),
                ),
                title: Text(
                  item["name"] ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  item["Jabatan"] ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
