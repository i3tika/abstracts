import 'package:abstracts/core/network/_network.dart';
import 'package:abstracts/core/ui/_ui.dart';

class ItemsList extends StatefulWidget {
  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  ScrollController _scrollController = ScrollController();
  List<String> _data = [];
  bool _isLoading = false;
  int _currentPage = 1;
  int _totalPages = 10;
  Dio _dio = Dio();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      if (!_isLoading && _currentPage < _totalPages) {
        setState(() {
          _isLoading = true;
          _currentPage++;
        });
        _fetchData();
      }
    }
  }

  Future<void> _fetchData() async {
    // Simulate API call delay
    await Future.delayed(Duration(seconds: 2));

    // Fetch data for the current page from your data source
    List<String> newData = await _getPaginatedData(_currentPage);

    setState(() {
      _data.addAll(newData); 
    });
  }

  Future<List<String>> _getPaginatedData(int page) async {
    // Fetch data for the given page from your data source
    // Example API call:
    final response = await _dio.get('http://localhost:8080/confluence/rest/api/space/ds/content/$page?limit=5');
    // Parse the response and return the data as a list
    // return List<String>.from(json.decode(response.data));

    // Simulate fetching data
    return List<String>.generate(20, (index) => 'Item ${(page - 1) * 20 + index + 1}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagination Example'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _data.length + 1,
        itemBuilder: (context, index) {
          if (index < _data.length) {
            return ListTile(
              title: Text(_data[index]),
            );
          } else if (_isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Container();
          }
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
    _scrollController.addListener(_scrollListener);
  }

}