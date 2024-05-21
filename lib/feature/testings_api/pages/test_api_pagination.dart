import 'package:abstracts/feature/testings_api/data/models/products.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/network/_network.dart';

@RoutePage()
class PaginationPage extends StatefulWidget {
  const PaginationPage({super.key});

  @override
  State<PaginationPage> createState() => _PaginationPageState();
}

class _PaginationPageState extends State<PaginationPage> {
  // final ScrollController scrollController = ScrollController();
  // List<Products> products = [];
  // int totalProduct = 1000;
  // bool isLoading = false;
  // final Dio dio = Dio();
  // @override
  // void initState() {
  //   scrollController.addListener(loanMoreData);
  //   getProduct();
  //   super.initState();
  // }
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.utc(2010, 10, 16).toLocal();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TableCalendar Example'),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2000, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            onPageChanged: (focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
              });
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
          ),
          // Your custom Text widget that displays the current month
          Text(
            DateFormat.MMMM('en').format(_focusedDay),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

//   void loanMoreData() {
//     if (scrollController.position.pixels ==
//             scrollController.position.maxScrollExtent &&
//         products.length < totalProduct) {
//       getProduct();
//     }
//   }

//   Future<void> getProduct() async {
//     try {
//       setState(() {
//         isLoading = true;
//       });
//       final response = await dio.get(
//         'https://dummyjson.com/products?limit=15&skip=${products.length}&select=title,price,thumbnail',
//       );
//       final List data = response.data['products'];
//       final List<Products> newProduct =
//           data.map((p) => Products.fromJson(p)).toList();
//       setState(() {
//         isLoading = false;
//         totalProduct = response.data['total'];
//         products.addAll(newProduct);
//       });
//       print(newProduct);
//     } catch (e) {
//       print(e);
//     }
//   }
// }
