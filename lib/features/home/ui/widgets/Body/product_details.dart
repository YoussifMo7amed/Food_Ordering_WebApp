import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_app/core/helper/spacing.dart';
import 'package:web_app/features/home/data/model/product_model.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductDetails({super.key, required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(11.0),
      child: InkWell(
        onTap: press,
        child: Column(
          children: [ 
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network( 
                  product.image, height: 200, width: 200, fit: BoxFit.cover,),
              ),
            ),
            verticalSpace(10.h),
            AutoSizeText(
              maxLines: 1,
              minFontSize: 14.0,
              product.title, style: const TextStyle(fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}