import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<String> sizes = ['S', 'M', 'L', 'XL', '2XL'];
  int selectedSize = 2;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.zero,topRight: Radius.circular(24),bottomRight: Radius.circular(24),bottomLeft: Radius.zero),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/t-shirt.png',
                          height: 350,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 28,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 16,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[600],
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 16,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(sizes.length, (i) {
                    final isSelected = i == selectedSize;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = i;
                          });
                        },
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.red : const Color(0xFF23252B),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            sizes[i],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Audiowide',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
        Padding(
    padding: EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

    children: [

    const Text(
    'Belgium EURO',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
      fontFamily: 'Audiowide',
    fontSize: 26,

    ),
    ),
    const SizedBox(height: 4),
    // Subtitle
    const Text(
    '20/21 Away by Adidas',
    style: TextStyle(
    color: Color(0xFFB7B7B7),
    fontSize: 15,
    fontWeight: FontWeight.w500,
      fontFamily: 'Audiowide',
    ),
    ),
    const SizedBox(height: 18),
    // =====Rating and Counter Row======
    Row(
    children: [
    Row(
    children: [
    ...List.generate(5, (i) => const Icon(Icons.star, color: Colors.red, size: 30)),
    const SizedBox(width: 6),
    const Text(
    '4.0',
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Audiowide',  fontSize: 18),
    ),
    ],
    ),
    const Spacer(),
    Container(
    width: 120,
    height: 40,
    decoration: BoxDecoration(
    color: Color(0xFF34363B),
    borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    GestureDetector(
    onTap: () {
    setState(() {
    if (quantity > 1) quantity--;
    });
    },
    child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(4),
    ),
    child: const Center(
    child: Icon(Icons.remove, color: Colors.white, size: 24),
    ),
    ),
    ),
    Text(
    '$quantity',
    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Audiowide', fontSize: 20),
    ),
    GestureDetector(
    onTap: () {
    setState(() {
    quantity++;
    });
    },
    child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(4),
    ),
    child: const Center(
    child: Icon(Icons.add, color: Colors.white, size: 24),
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    SizedBox(height: 34,),
    // =====Details and Price====
    Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    // Details Column
    Expanded(
    child: Column(

    crossAxisAlignment: CrossAxisAlignment.start,

    children: const [
    Text("Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Audiowide',color: Colors.grey),),
    SizedBox(height: 8,),
    DetailText(
    label: 'Material',
    value: 'Polyester',
    ),
    SizedBox(height: 8,),
    DetailText(
    label: 'Shipping',
    value: 'In 5 to 6 Days',
    ),
    SizedBox(height: 8,),
    DetailText(
    label: 'Returns',
    value: 'Within 20 Days',
    ),
    ],
    ),
    ),
    const SizedBox(width: 16),
    // Red Box with Icon and Price
    Container(
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 25),
    decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
    children: const [
    Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 32),
    SizedBox(height: 24),
    Text(
    '\$89',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
      fontFamily: 'Audiowide',
    fontSize: 20,
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    const SizedBox(height: 24),
    ],
    ),
    ),
    ],
      ),




    );

  }
}

class DetailText extends StatelessWidget {
  final String label;
  final String value;
  const DetailText({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: label +": ",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Audiowide',
                fontSize: 18,
              ),
            ),
            TextSpan(
              text: value,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontFamily: 'Audiowide',
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 