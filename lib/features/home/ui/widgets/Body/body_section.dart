import 'package:flutter/material.dart';
import 'package:web_app/core/helper/responsive.dart';
import 'package:web_app/features/home/data/model/product_model.dart';
import 'package:web_app/features/home/ui/widgets/Body/product_details.dart';
import 'package:web_app/features/home/ui/widgets/Body/send_feedBack.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(maxWidth: 1233),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Responsive(
                mobile: ProductDetail(
                    crossAxisCount: size.width < 690 ? 2 : 3,
                    aspectRatio: size.width < 560 ? 0.85 : 1.1),
                desktop: ProductDetail(
                    crossAxisCount: size.width < 650 ? 2 : 3,
                    aspectRatio: size.width < 650 ? 0.85 : 1.1),),
                     const SizedBox(
              height: 40,
            ),
            const SendFeedBack(),
          ],
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
   this.crossAxisCount=3,
   this.aspectRatio=1.1,
  });

  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) {
        return ProductDetails(
          product: products[index],
          press: () {},
        );
      },
      itemCount: products.length,
    );
  }
}
