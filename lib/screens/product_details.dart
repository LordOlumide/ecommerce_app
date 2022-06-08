import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String productName;
  final String productPicture;
  final int? productOldPrice;
  final int productPrice;
  final String productDescription;

  const ProductDetails({
    required this.productName,
    required this.productPicture,
    this.productOldPrice,
    required this.productPrice,
    required this.productDescription,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('FashApp'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              child: GridTile(
                child: Image.asset(
                  widget.productPicture,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.productName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Row(
                      children: [
                        Expanded(
                          child: widget.productOldPrice != null
                              ? Text(
                                  '\$${widget.productOldPrice}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                )
                              : SizedBox(width: 20),
                        ),
                        Expanded(
                          child: Text(
                            '\$${widget.productPrice}',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

//    ======== The first buttons =======
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MaterialButton(
                    textColor: Colors.grey,
                    elevation: 0.3,
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(child: Text('Size')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    textColor: Colors.grey,
                    elevation: 0.3,
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(child: Text('Colour')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    textColor: Colors.grey,
                    elevation: 0.3,
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(child: Text('Qty')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

// ==========The second buttons ========
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 3,
                      onPressed: () {},
                      child: Text('Buy Now')),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
              ],
            ),
            const Divider(),
// =========== The text details ===========
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
              child: Text('Product description:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                widget.productDescription,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Divider(),

// ===============  The bottom summary =======
            Column(
              children: [
                BottomSummaryItem(
                  widget: widget,
                  title: 'Product Name',
                  answer: widget.productName,
                ),
                BottomSummaryItem(
                  widget: widget,
                  title: 'Product Brand',
                  answer: 'Brand X',
                ),
                BottomSummaryItem(
                  widget: widget,
                  title: 'Product condition',
                  answer: 'Brand new',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSummaryItem extends StatelessWidget {
  final String title;
  final String answer;

  const BottomSummaryItem({
    Key? key,
    required this.widget,
    required this.title,
    required this.answer,
  }) : super(key: key);

  final ProductDetails widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: Row(children: [
        Text(
          '$title:  ',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Text(
          answer,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
