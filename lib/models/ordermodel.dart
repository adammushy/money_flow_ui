import 'package:money_flow/exports.dart';

class OrderModel extends StatelessWidget {
  String name;
  String amount;
  String initiator;
  String status;

  OrderModel(this.name, this.amount, this.initiator, this.status);
  
  IconData _getIconForStatus(String status) {
    switch (status) {
      case 'pending':
        return Icons.access_time;
      case 'in-progress':
        return Icons.autorenew;
      case 'completed':
        return Icons.check_circle;
      default:
        return Icons.info; // You can customize the default icon
    }
  }

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    // IconData statusIcon;

    switch (status) {
      case 'pending':
        statusColor = Colors.grey;
        // statusIcon = Icon(Icons.access_time);
        break;
      case 'in-progress':
        statusColor = Colors.yellowAccent;
        // statusIcon = Icon(Icons.cached);
        break;
      case 'completed':
        statusColor = Colors.green;
        // statusIcon = Icon(Icons.done);
        break;
      default:
        statusColor = Colors.grey;
    }
    return InkWell(
      onTap: () {
        print("order clicked");
      },
      child: Card(
          //  borderOnForeground: true,
          // shape: CircleBorder,
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.898),
                borderRadius: BorderRadius.circular(1)),
            child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right:
                              new BorderSide(width: 1.0, color: Colors.white))),
                  // child: Icon(Icons.autorenew, color: Colors.black),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "20",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "aug-2020",
                        style: TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                ),
                title: Text(
                  "${name}",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                subtitle: Row(
                  children: <Widget>[
                    Icon(_getIconForStatus(status), color: statusColor),
                    Text("${status}", style: TextStyle(color: Colors.black))
                  ],
                ),
                trailing: Icon(Icons.keyboard_arrow_right,
                    color: Colors.black, size: 30.0)),
          )),
    );
  }
}
