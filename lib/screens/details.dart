import 'package:flutter/material.dart';
import 'package:online_shop/models/product_model.dart';
import 'package:online_shop/widgets/data.dart';
import 'package:online_shop/widgets/title.dart';
import 'package:online_shop/widgets/button.dart';
import 'package:online_shop/widgets/image.dart';


class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailData(description: arguments.description, price: arguments.price),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}