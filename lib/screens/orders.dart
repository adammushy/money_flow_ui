import 'package:money_flow/exports.dart';

// class OrderList extends StatefulWidget {
//   const OrderList({super.key});

//   @override
//   State<OrderList> createState() => _OrderListState();
// }

// class _OrderListState extends State<OrderList> {
//   TextEditingController searchController = TextEditingController();
//   bool _isSearching = false;
//   String _searchText = '';
// // List <dynamic> data =[];
//   // List<OrderModel> _orders = [
//   //   OrderModel("Customer 1", "amount1", "initiator1", "status1"),
//   //   OrderModel("Customer 2", "amount2", "initiator2", "status2"),
//   //   // ... Add more orders
//   // ];
//   // List<OrderModel> _filteredOrders = [];
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _filteredOrders = _orders;
//   // _orders.addAll(_orders);
//   // }

//   // void search(String query) {
//   //   if (query.isEmpty) {
//   //     setState(() {
//   //       _filteredOrders.clear();
//   //     });
//   //   }
//   //   else{  setState(() {
//   //     _filteredOrders = _orders
//   //         .where(
//   //             (order) => order.name.toLowerCase().contains(query.toLowerCase()))
//   //         .toList();
//   //   });}

//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: ,
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.white,
//         title: Center(
//             child: Text(
//           "Orders",
//           textAlign: TextAlign.center,
//         )),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               setState(() {
//                 _isSearching = !_isSearching;
//                 _searchText = '';
//                 if (!_isSearching) {
//                   // _filteredOrders = _orders;
//                 }
//                 // Toggle search bar visibility
//               });
//             },
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Container(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               if (_isSearching) // Conditionally show the search bar
//                 Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "Search...",
//                     ),
//                     onChanged: (value) {
//                       // Implement search functionality here
//                     },
//                   ),
//                 ),
//               // if (_isSearching) // Conditionally show the search bar
//               //   Padding(
//               //     padding: EdgeInsets.all(16.0),
//               //     child: Column(
//               //       children: [
//               //         TextField(
//               //           controller: searchController,
//               //           decoration: InputDecoration(
//               //             hintText: "Search...",
//               //           ),
//               //           onChanged: (value) {
//               //             // Implement search functionality here
//               //             setState(() {
//               //               _searchText = value;
//               //               _filteredOrders = _orders;
//               //             });
//               //           },
//               //         ),
//               //         // if (_filteredOrders.isNotEmpty)
//               //           // SizedBox(height: 10),
//               //         // if (_filteredOrders.isNotEmpty)
//               //         //  Expanded(child: ListView.builder(
//               //         //   itemCount: _filteredOrders.length,
//               //         //   itemBuilder: (context, index){
//               //         //     if(_filteredOrders[index] is _orders){
//               //         //        order =
//               //         //     }
//               //         //   }),),
//               //       ],
//               //     ),
//               //   ),
//               Expanded(
//                 child: ListView.builder(
//                   scrollDirection: Axis.vertical,
//                   shrinkWrap: true,
//                   itemCount: 10,
//                   itemBuilder: (BuildContext context, int index) {
//                     return InkWell(
//                         child: OrderModel("Customer name", "amount2",
//                             "initiator1", "status"));
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// //   Widget orders(){
// // return FutureBuilder<List<>>(
// //   // future: Mode,
// //   builder: (context, snapshot){
// //  if(snapshot.hasData){
// //   var data = snapshot.data!;
// //   return ListView.builder(itemBuilder: itemBuilder)
// //  }else{
// //   return Center(child: CircularProgressIndicator(),);
// //  }
// //   })
// //   }
// //  InkWell(
// //               onTap: () {
// //                 print("pressed");
// //               },
// //               child: OrderModel("name1", "amount1", "initiator1","status")),
// //           InkWell(child: OrderModel("name1", "amount2", "initiator1" ,"status")),
// //           InkWell(child: OrderModel("name1", "amount3", "initiator1","status")),

//   Future getOrder() async {
//     return null;
//   }
// }

// import 'package:flutter/material.dart';

// class OrderModel {
//   final String customerName;
//   final String amount;
//   final String initiator;
//   final String status;

//   OrderModel(this.customerName, this.amount, this.initiator, this.status);
// }

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  TextEditingController searchController = TextEditingController();
  bool _isSearching = false;
  String _searchText = '';
  List<OrderModel> _orders = [
    OrderModel("Customer 1", "amount1", "initiator1", "pending"),
    OrderModel("Customer 2", "amount2", "initiator2", "in-progress"),

    OrderModel("Customer 3", "amount3", "initiator3", "completed"),
    OrderModel("Customer 3.1", "amount3", "initiator3", "completed"),
    OrderModel("Customer 3.2", "amount3", "initiator3", "completed"),

    // ... Add more orders
  ];

  List<OrderModel> _filteredOrders = [];

  @override
  void initState() {
    super.initState();
    _filteredOrders = _orders;
  }

  void _filterOrders(String query) {
    setState(() {
      _filteredOrders = _orders
          .where(
              (order) => order.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  List<OrderModel> _getOrdersByStatus(String status) {
    return _filteredOrders.where((order) => order.status == status).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Orders",
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  _isSearching = !_isSearching;
                  _searchText = '';
                  if (!_isSearching) {
                    _filteredOrders = _orders;
                  }
                });
              },
            )
          ],
          bottom: TabBar(indicatorColor: Color.fromARGB(255, 179, 255, 247),
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'In Progress'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              if (_isSearching)
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchText = value;
                        _filterOrders(_searchText);
                      });
                    },
                  ),
                ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildOrderListView('pending'),
                    _buildOrderListView('in-progress'),
                    _buildOrderListView('completed'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderListView(String status) {
    List<OrderModel>  orders = _getOrdersByStatus(status);
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
            child:
                OrderModel(orders[index].name, orders[index].amount, orders[index].initiator, status));
 
      },
    );
  }
}
