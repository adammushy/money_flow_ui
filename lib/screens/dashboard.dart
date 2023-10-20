import 'package:money_flow/exports.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController field1Controller = TextEditingController();
  TextEditingController field2Controller = TextEditingController();
  TextEditingController field3Controller = TextEditingController();

  String imgUrl = '';

  // void showOrderDialog(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            32.0,
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Theme.of(context).primaryColor,
                              Theme.of(context).accentColor,

                              // Static.PrimaryColor,
                              // Colors.blueAccent,
                            ],
                          ),
                        ),
                        // child:imgUrl == ''
                        // ?
                        // imgUrl ==''
                        // :
                        // ClipRRect
                        child: CircleAvatar(
                          maxRadius: 24.0,
                          backgroundColor: Colors.transparent,
                          // child: Image.asset(
                          //   "assets/images/person.jpg",
                          //   width: 64.0,
                          // ),
                          backgroundImage:
                              AssetImage("assets/images/person.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      SizedBox(
                        width: 200.0,
                        child: Text(
                          "Welcome {GET NAME}",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                      color: Colors.white70,
                    ),
                    padding: EdgeInsets.all(
                      12.0,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        )
                            .then((value) {
                          setState(() {});
                        });
                      },
                      child: Icon(
                        Icons.settings,
                        size: 32.0,
                        color: Color(0xff3E454C),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // CARD FOR BALANCE
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 8.0,
                ),
                decoration: BoxDecoration(
                    // color: Colors.white,
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.03),
                        spreadRadius: 10,
                        blurRadius: 3,
                      )
                    ]),
                child: Column(
                  children: [
                    Text(
                      'Total Balance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      'Total balance from DB',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // fontSize: 36.0,
                        fontSize: size.height * 0.032,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardIncome(
                              // totalIncome.toString()
                              "total income"),
                          cardExpense(
                              // totalExpense.toString(),
                              "T.Expense"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget cardIncome(String value) {
    var size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          padding: EdgeInsets.all(
            6.0,
          ),
          child: Icon(
            Icons.arrow_downward,
            size: 28.0,
            color: Colors.green[700],
          ),
          margin: EdgeInsets.only(
            right: 8.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Income",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white70,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: size.width * 0.032,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget cardExpense(String value) {
    var size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          padding: EdgeInsets.all(
            6.0,
          ),
          child: Icon(
            Icons.arrow_upward,
            size: 28.0,
            color: Colors.red[700],
          ),
          margin: EdgeInsets.only(
            right: 8.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expense",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white70,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: size.width * 0.032,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController nameController = TextEditingController();
  TextEditingController field1Controller = TextEditingController();
  TextEditingController field2Controller = TextEditingController();
  TextEditingController field3Controller = TextEditingController();

  String imgUrl = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(boxShadow: [], borderRadius: BorderRadius.circular(20)),
      child: AlertDialog(
        title: Text(
          "Create Order",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'name customer'),
            ),
            TextFormField(
              controller: field1Controller,
              decoration: InputDecoration(labelText: 'product'),
            ),
            TextFormField(
              controller: field2Controller,
              decoration: InputDecoration(labelText: 'quantity'),
            ),
          ],
        ),
        actions: [
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // color: Theme.of(context).buttonColor),

          MaterialButton(
              child: Text("Submit"),
              onPressed: () {
                // Handle submit button action
                String name = nameController.text;
                String address = nameController.text;

                // Perform form submission logic here

                // Close the dialog
                Navigator.pop(context);
              },
              color: Theme.of(context).buttonColor),
        ],
      ),
    );
  }
}
