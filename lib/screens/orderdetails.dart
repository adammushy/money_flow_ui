import 'package:money_flow/exports.dart';

class OrderDetails extends StatefulWidget {
  String name;
  OrderDetails(this.name);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
height: size.height * 0.2,
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
      children: [
        Text("Customer Name : ${widget.name}"),
        Text("Customer Name : ${widget.name}"),
        Text("Customer Name : ${widget.name}"),
        Text("Customer Name : ${widget.name}"),
    
      
      ],
    
        ),
        actions: [
          MaterialButton(
              child: Text("Ok"),
              onPressed: () {
                
                // Perform form submission logic here

                // Close the dialog
                Navigator.pop(context);
              },
              color: Theme.of(context).buttonColor),],
      ),
    );
  }
}
