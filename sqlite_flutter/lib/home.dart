import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_flutter/db_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _allData = [];
  bool _isLoading = true;
  void _refreshData() async {
    final data = await SQLHelper.getAllData();
    setState(() {
      _allData = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  Future<void> _addData() async {
    await SQLHelper.createData(_titleController.text, _descController.text);
    _refreshData();
  }

  Future<void> _updateData(int id) async {
    await SQLHelper.updateData(id, _titleController.text, _descController.text);
    _refreshData();
  }

  void _deleteData(int id) async {
    await SQLHelper.deleteData(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.redAccent,
      content: Text("Data Deleted"),
    ));
    _refreshData();
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  void showBottomSheet(int? id) async {
    if (id != null) {
      final existingData =
          _allData.firstWhere((element) => element['id'] == id);
      _titleController.text = existingData['title'];
      _descController.text = existingData['desc'];
    }
    showModalBottomSheet(
      elevation: 5,
      isScrollControlled: true,
      context: context,
      builder: (_) => Container(
        padding: EdgeInsets.only(
            top: 30,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Title'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _descController,
              maxLines: 4,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Description'),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  if (id == null) {
                    await _addData();
                  }
                  if (id != null) {
                    await _updateData(id);
                  }
                  _titleController.text = '';
                  _descController.text = '';
                  Navigator.of(context).pop();
                  print("data added");
                },
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    id == null ? 'Add Data' : 'Update',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEAF4),
      appBar: AppBar(
        title: Text('CRUD Operations'),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _allData.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(15),
                  child: ListTile(
                      title: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          _allData[index]['title'],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      subtitle: Text(_allData[index]['desc']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              showBottomSheet(_allData[index]['id']);
                            },
                            icon: Icon(
                              Icons.edit,
                              color: Colors.indigo,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _deleteData(_allData[index]['id']);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showBottomSheet(null),
        child: Icon(Icons.add),
      ),
    );
  }
}
