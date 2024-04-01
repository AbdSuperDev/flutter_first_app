import 'package:app1/pages/product_details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool isDetail;
  ProductItem({super.key, required this.product, required this.isDetail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Image(image: AssetImage(NetworkImage()))
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductsDetail(
                              productId: int.parse(product['id']))),
                    );
                    /*
                    print(product['id']);
                    Navigator.pushNamed(context, "/productDetail",
                        arguments: product['id'] as int);

                     */
                  },
                  child: Image(
                    width: 150,
                    image: AssetImage("${product['image']}"),
                  ),
                ),
                Container(
                  height: 200,
                  width: 170,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${product['name']}",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "CFA ${product["price"]}",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          (product["promotion"]) == true
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                ),
                          Row(
                            children: [
                              for (int i = 0; i < product['stars']; i++)
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (isDetail == true)
            Card(
              child: Text("${product["desc"]}"),
            )
        ],
      ),
    ) /*Text(
              "- ${products[index]["name"]}",
              style: Theme.of(context).textTheme.bodySmall,
            ),*/

        );
  }
}
