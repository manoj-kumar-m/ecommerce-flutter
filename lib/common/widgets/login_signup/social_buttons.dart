import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color:TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          // Google Sign In Button
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(TImages.google),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
          ),
        ),
    
        const SizedBox(width: TSizes.spaceBtwItems),
        
        // Facebook Sign In Button
        Container(
          decoration: BoxDecoration(
            border: Border.all(color:TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          // Google Sign In Button
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(TImages.facebook),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
          ),
        )
      
      ],
    );
  }
}

