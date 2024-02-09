import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of photo URLs and titles
  List<String> photoUrls = [
    'https://www.pngitem.com/pimgs/m/277-2779409_caterpillar-inc-bulldozer-clipart-hd-png-download.png',
    'https://clipart-library.com/newhp/19-194952_png-library-library-excavator-clipart-transparent-excavator-clipart.png',
    'https://webstockreview.net/images/clipart-cat-dump-truck.png',
    'https://img2.pngdownload.id/20180209/rce/kisspng-loader-heavy-equipment-excavator-clip-art-hand-painted-bulldozers-5a7dba328e3f44.6966737315181891065827.jpg',
    'https://static.vecteezy.com/system/resources/previews/002/975/758/non_2x/flat-roll-design-heavy-machinery-vector.jpg',
    'https://besthydraulicindo.com/wp-content/uploads/2022/04/ap.jpg',
    'https://clipart-library.com/data_images/533235.png',
    'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/13435/forklift-clipart-md.png',
    'https://e7.pngegg.com/pngimages/577/83/png-clipart-car-rail-transport-mode-of-transport-vehicle-orange-cartoon-car-infographic-cartoon-character.png',
    'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/63491/grader-machine-clipart-md.png',
    'https://clipart-library.com/newhp/water_67007288_Dump20truck20flat20vector20clipart20illustration20PNG20file_s.jpg',
    'https://www.shutterstock.com/image-vector/wheel-trencher-construction-machine-vector-260nw-2137428955.jpg',
    // Add more photo URLs as needed
  ];

  List<String> photoTitles = [
    'Buldozzer',
    'Excavator',
    'Dump Truck',
    'Loader',
    'Compactor',
    'Paver',
    'Crane',
    'Forklift',
    'Bus',
    'Grader',
    'Truck',
    'Trencher',
    // Add more titles corresponding to the photos
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang '),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/bb/d4/a4/bbd4a42c6ce568edc36934b0437d51c1.jpg'), // Ganti dengan URL gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 8.0, // Spacing between rows
              childAspectRatio: 0.8, // Adjust the aspect ratio to change the size
            ),
            itemCount: photoUrls.length,
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: Center(
                  child: Image.network(
                    photoUrls[index],
                    fit: BoxFit.cover,
                  ),
                ),
                footer: Container(
                  color: Colors.black.withOpacity(0.6),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    photoTitles[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
