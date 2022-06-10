import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardHomeScreen extends StatefulWidget {
  const DashBoardHomeScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardHomeScreen> createState() => _DashBoardHomeScreenState();
}

class _DashBoardHomeScreenState extends State<DashBoardHomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const Text(
            'Halo, (user name)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Welcome Back',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            width: 250,
            height: 100,
            child: TextFormField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Cari',
                contentPadding: EdgeInsets.symmetric(vertical: 30),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          // TextFieldSearch(
          //   label: 'Search Course',
          //   controller: _searchController,
          //   future: () {
          //     return "HALO";
          //   },
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderSide: const BorderSide(color: Colors.black),
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     hintText: 'Search Course',
          //   ),
          // ),
          Container(
            width: double.infinity,
            height: 180,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemCount: 5,
                itemBuilder: (BuildContext, int index) {
                  return const Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text('Halo'),
                    ),
                  );
                }),
          ),
          Container(
            width: 250,
            height: 100,
            child: const Center(
              child: Text(
                'Tingkatkan Kemampuanmu, Mari Belajar Bersama Kami!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: 250,
            height: 50,
            child: const Center(
              child: Text(
                'Perluas pengetahuan dengan pembelajaran yang mencengkeram dunia',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 190,
            child: Column(
              children: [
                const Text(
                  'Top Course Of The Week',
                  textAlign: TextAlign.left,
                ),
                Container(
                  width: double.infinity,
                  height: 170,
                  child: InkWell(
                    onTap: () {},
                    hoverColor: Colors.blue,
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: 5,
                        itemBuilder: (BuildContext, int index) {
                          return Column(
                            children: [
                              Card(
                                color: Colors.blue,
                                child: Container(
                                  width: 160,
                                  height: 100,
                                ),
                              ),
                              Text('List Course'),
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                const Text(
                  'TOPIK',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                  width: double.infinity,
                  height: 130,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1),
                      itemCount: 5,
                      itemBuilder: (BuildContext, int index) {
                        return Column(
                          children: [
                            Container(
                              width: 80,
                              height: 50,
                              child: Card(
                                child: Container(
                                  width: 80,
                                  height: 50,
                                  child: Text('HALO',
                                      textAlign: TextAlign.justify),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 80,
                              child: Center(
                                child: Text('Halo'),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black),
                top: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Text(
                  'Perusahaan Besar Yang Percaya Pada Kami',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
                Container(
                  width: 200,
                  height: 130,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemCount: 5,
                    itemBuilder: (BuildContext, int index) {
                      return const Card(
                        color: Colors.blue,
                        child: Center(
                          child: Text('HALO'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 300,
            height: 50,
            color: Colors.grey,
            child: Row(
              children: [
                Text('Kontak Kami'),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/vector.svg')),
              ],
            ),
          )
        ],
      ),
    );

    //   return ListView(
    //     children: [
    //       const Text('Halo + (user name)'),
    //       const Text('Welcome Back'),
    //       TextFieldSearch(
    //         label: 'Search',
    //         controller: _searchController,
    //         decoration: const InputDecoration(
    //             border: OutlineInputBorder(
    //                 borderSide: BorderSide(color: Colors.black))),
    //       ),
    //     ],
    //   );
    // }
  }
}
