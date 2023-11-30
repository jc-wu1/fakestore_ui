import 'package:fakestore_ui/src/design/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../cart/cart_page.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductDetailPageView();
  }
}

class ProductDetailPageView extends StatelessWidget {
  const ProductDetailPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            icon: Icon(
              Icons.shopping_bag,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Add to cart'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ).r,
        children: [
          Image.network(
            'https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg',
          ),
          Gap(8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$200',
                style: body2Bold,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                ),
              )
            ],
          ),
          Gap(5.h),
          Text(
            'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s',
            style: caption1Bold,
          ),
          Gap(5.h),
          Row(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  Text(
                    '4.5',
                    style: caption2Regular,
                  )
                ],
              ),
              Gap(8.h),
              Text(
                '86 Review(s)',
                style: caption2Regular,
              )
            ],
          ),
          Gap(16.h),
          Text(
            'Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)',
            style: caption1Regular,
          )
        ],
      ),
    );
  }
}
