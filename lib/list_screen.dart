import 'package:flutter/material.dart';

class HeavyEquipment {
  final String name;
  final String imageUrl;

  HeavyEquipment({required this.name, required this.imageUrl});
}

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late List<HeavyEquipment> _filteredList;
  String _keywords = '';
  final List<HeavyEquipment> _originList = [
    HeavyEquipment(
      name: 'Buldozzer',
      imageUrl: 'https://www.pngitem.com/pimgs/m/277-2779409_caterpillar-inc-bulldozer-clipart-hd-png-download.png',
    ),
    HeavyEquipment(
      name: 'Excavator',
      imageUrl: 'https://clipart-library.com/newhp/19-194952_png-library-library-excavator-clipart-transparent-excavator-clipart.png',
    ),
    HeavyEquipment(
      name: 'Dump Truck',
      imageUrl: 'https://webstockreview.net/images/clipart-cat-dump-truck.png',
    ),
    HeavyEquipment(
      name: 'Loader',
      imageUrl: 'https://img2.pngdownload.id/20180209/rce/kisspng-loader-heavy-equipment-excavator-clip-art-hand-painted-bulldozers-5a7dba328e3f44.6966737315181891065827.jpg',
    ),
    HeavyEquipment(
      name: 'Compator',
      imageUrl: 'https://static.vecteezy.com/system/resources/previews/002/975/758/non_2x/flat-roll-design-heavy-machinery-vector.jpg',
    ),
    HeavyEquipment(
      name: 'Paver',
      imageUrl: 'https://besthydraulicindo.com/wp-content/uploads/2022/04/ap.jpg',
    ),
    HeavyEquipment(
      name: 'Crane',
      imageUrl: 'https://clipart-library.com/data_images/533235.png',
    ),
    HeavyEquipment(
      name: 'Forklift',
      imageUrl: 'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/13435/forklift-clipart-md.png',
    ),
    HeavyEquipment(
      name: 'Bus',
      imageUrl: 'https://e7.pngegg.com/pngimages/577/83/png-clipart-car-rail-transport-mode-of-transport-vehicle-orange-cartoon-car-infographic-cartoon-character.png',
    ),
    HeavyEquipment(
      name: 'Grader',
      imageUrl: 'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/63491/grader-machine-clipart-md.png',
    ),
    HeavyEquipment(
      name: 'Truck',
      imageUrl: 'https://clipart-library.com/newhp/water_67007288_Dump20truck20flat20vector20clipart20illustration20PNG20file_s.jpg',
    ),
    HeavyEquipment(
      name: 'Trencher',
      imageUrl: 'https://www.shutterstock.com/image-vector/wheel-trencher-construction-machine-vector-260nw-2137428955.jpg',
    ),
  ];

  
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _filteredList = _originList;
    _originList.sort((a, b) => a.name.compareTo(b.name));
    _searchController.addListener(_search);
    super.initState();
  }

  void _search() {
    setState(() {
      _keywords = _searchController.text;
      _filteredList = _originList
          .where((equipment) =>
              equipment.name.toLowerCase().contains(_keywords.toLowerCase()))
          .toList();
    });
  }

  Widget _buildList({required List<HeavyEquipment> list}) => Expanded(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              color: Color.fromARGB(255, 221, 234, 240),
              child: ListTile(
                title: Row(
                  children: [
                    Image.network(
                      list[index].imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      list[index].name,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
                onTap: () {
                  // Tambahkan aksi ketika item dipilih (opsional)
                },
              ),
            );
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/bb/d4/a4/bbd4a42c6ce568edc36934b0437d51c1.jpg'), // Ganti dengan URL gambar background
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Cari Alat Berat',
                  hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 18),
                  prefixIcon: const Icon(Icons.search, color: Colors.blueGrey),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              _buildList(list: _keywords.isEmpty ? _originList : _filteredList),
            ],
          ),
        ),
      ),
    );
  }
}
