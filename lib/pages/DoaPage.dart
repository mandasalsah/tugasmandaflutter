import 'package:bisamandayuks/model/DetailPage.dart';
import 'package:bisamandayuks/pages/main_page.dart';
import 'package:flutter/material.dart';

class DoaPage extends StatefulWidget {
  const DoaPage({super.key});


  @override
  State<DoaPage> createState() => _DoaPageState();
}

class _DoaPageState extends State<DoaPage> {

    // membuat dummy list doa
  List<Map<String, dynamic>> _allUsers =[
    {"id": 1, "name": "Doa Sebelum Tidur", "riwayat": "HR. Al-Bukhari"},
    {"id": 2, "name": "Doa Keluar Kamar Mandi", "riwayat": "HR. Abu Dawud dan at-tirmidzi"},
    {"id": 3, "name": "Doa Masuk Masjid", "riwayat": "HR. Muslim"},
    {"id": 4, "name": "Doa Sebelum Belajar", "riwayat": "HR. Ahmad dan Ibnu Majah"},
    {"id": 5, "name": "Doa Keluar Rumah", "riwayat": "HR. Abu Dawud dan at-tirmidzi"},
    {"id": 6, "name": "Doa Saat Wudhu","riwayat":  "HR. "},
    {"id": 7, "name": "Doa Mau Makan", "riwayat": "HR. "},
    {"id": 8, "name": "Doa Naik Kendaraan", "riwayat": "HR. "},
  ];
  
  List<Map<String, dynamic>> _foundUsers =[];
  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword){

    List<Map<String, dynamic>> results =[];
    if (enteredKeyword.isEmpty){
      results = _allUsers;
    } else {
      results = _allUsers
      .where((user) => 
      user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
      .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Category Doa"),
        backgroundColor: Color(0xFFFF884B),
        elevation: 0.0,
        leading: IconButton(
         icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MainPage()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                labelText: 'Search for Doa',
                hintText: 'Searh for Doa', 
                 suffixIcon: Icon(Icons.search)),
            ),
              const SizedBox(
                height: 20,
              ),
            Expanded(
              child: ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Color(0xFFFFD384),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: 
                    Text(
                      _foundUsers[index]["id"].toString(),
                      style: const TextStyle(fontSize: 24, color: Colors.black),
                    ),
                    title: Text(_foundUsers[index]['name'],
                    style: TextStyle(color: Colors.black)),
                    subtitle: Text(_foundUsers[index]["riwayat"],
                     style: TextStyle(color: Colors.grey)),
                     trailing: Icon(Icons.bookmark, color: Color(0xFFFF884B)),
                     onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => DetailPage(index)));
                     },
                  ),
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
  }
