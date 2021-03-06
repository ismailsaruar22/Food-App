import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Widget singleProduct() {
    return Container(
      margin: const EdgeInsets.all(6),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      child: Column(children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/mint.jpg',
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Fresh Mints leaves",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text('100 gram 100tk')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          child: const Text(
                            '50 Gram',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )),
                      const Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.remove,
                        size: 15,
                      ),
                      Text('1'),
                      Icon(
                        Icons.add,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  Widget listTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[400],
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 44,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Welcome User'),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.green.shade900, width: 2),
                              primary: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              elevation: 2,
                            ),
                            child: Text('Login'),
                            onPressed: () {},
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              listTile(
                Icons.home_outlined,
                "Home",
              ),
              listTile(
                Icons.shop_outlined,
                "Rivew Cart",
              ),
              listTile(
                Icons.person_outlined,
                "My Profile",
              ),
              listTile(
                Icons.notifications_outlined,
                "Notification",
              ),
              listTile(
                Icons.star_outlined,
                "Rating and Riview",
              ),
              listTile(
                Icons.favorite_outlined,
                "Wishlist",
              ),
              listTile(
                Icons.copy_outlined,
                "Raise and Complaint",
              ),
              listTile(
                Icons.format_quote_outlined,
                "FAQs",
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Contact Support'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text('Call us:'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '0123456789',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text('Mail us:'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'ismail@gmail.com',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 10, 104, 26),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.cdc.gov/foodsafety/images/comms/features/GettyImages-1247930626-500px.jpg?_=00453'),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              height: 50,
                              width: 75,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                color: Colors.amber,
                              ),
                              child: const Text(
                                'FOOD \nAPP',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w900,
                                  shadows: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.black,
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(children: [
                              Expanded(
                                  child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "30% off",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "On all vegetable products",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Herbs and Seasoning',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                              color: Color.fromARGB(255, 107, 103, 103),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Fresh Fruits',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                              color: Color.fromARGB(255, 100, 93, 93),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                        singleProduct(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
