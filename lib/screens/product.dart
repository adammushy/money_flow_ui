import 'package:money_flow/exports.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<ProductModel> productList = [
    ProductModel("Box", "2000", ""),
    ProductModel("Box", "2000", "assets/images/"),
    ProductModel("Box", "2000", "assets/images/"),
    ProductModel("Box", "2000", ""),
  ];
  bool isLoading = false;

//  void getCatergoryList()async{
//     setState(() {
//        isLoading = true;
//     });
//     productModelList = await FirebaseFirestoreHelper.instance.getCategoryViewProduct(widget.categoryModel.id);
//     productModelList.shuffle();
//     setState(() {
//       isLoading=false;
//     });
//   }
//   @override
//   void initState() {
//     getCatergoryList();
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: kTextTabBarHeight * 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Text("{category name}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22)),
                      ],
                    ),
                  ),
                  productList.isEmpty
                      ? const Center(
                          child: Text("No Product in this category"),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(
                            1,
                          ),
                          child: GridView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              primary: false,
                              itemCount: productList.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                ProductModel singleProduct = productList[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 249, 249, 249),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Column(
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        singleProduct.imgUrl == ''
                                            ? Image.asset(
                                                "assets/images/person.jpg",
                                                fit: BoxFit.cover,
                                                height: 60,
                                                width: 60,
                                              )
                                            : Image.network(
                                                singleProduct.imgUrl,
                                                fit: BoxFit.cover,
                                                height: 60,
                                                width: 60,
                                              ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          singleProduct.name,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            "Price: \Tshs.${singleProduct.price}"),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 100,
                                          child: OutlinedButton(
                                            onPressed: () {
                                              // Routes.instance.push(
                                              //     widget: ProductDetails(
                                              //         singleProduct:
                                              //         singleProduct),
                                              //     context: context);
                                            },
                                            child: const Text("Buy Now"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                ],
              ),
            ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(),
    );
  }
}
