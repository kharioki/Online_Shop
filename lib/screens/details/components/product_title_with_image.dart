import 'package:Online_Shop/constants.dart';
import 'package:Online_Shop/models/Product.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aristocratic Hand Bag',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Price',
                    ),
                    TextSpan(
                      text: '\$${product.price}',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
