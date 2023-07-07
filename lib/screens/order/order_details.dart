import 'dart:async';

import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: const Text(
          'Order #1688068',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'May 31, 05:42 PM',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[700],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Delivered',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 101, 100, 100),
                          fontWeight: FontWeight.w400),
                    )
                  ])
                ],
              ),
              //first row end
              const SizedBox(
                height: 15,
              ),
              //whole container contains item,prize etc
              Row(
                children: [
                  Expanded(
                    child: Container(
                      //decoration
                      height: 200,
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                color: Color.fromARGB(255, 180, 176, 176),
                              ),
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 180, 176, 176),
                              ))),
                      //decoration end
                      //1 item &recipt
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  '1ITEM',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 101, 100, 100),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.receipt),
                                label: const Text('RECEIPT',
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                              )
                            ],
                          ),
                          //1 item &recipt end

                          //photo and other details
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //image
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(color: Colors.grey),
                                ),
                                height: 100,
                                width: 90,
                                child: Image.asset('assets/images/tshirt.jpg'),
                              ),
                              //image end
                              const SizedBox(
                                width: 20,
                              ),
                              //other details

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Explore | Men | Navy Blue ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    '1 piece',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    'Size: XL',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 31,
                                        width: 31,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.blue[50],
                                            border: Border.all(
                                              color: Colors.blue.shade500,
                                            )),
                                        child: Center(
                                            child: Text('1',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.blue[500]))),
                                      ),
                                      const Text(
                                        '  X ₹799',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        width: 127.727,
                                      ),
                                      const Text(
                                        '₹799',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  )
                                ],
                              )

                              //other details end
                            ],
                          ),

                          //photo and other details
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //whole container contains item,prize etc end
              const SizedBox(
                height: 25,
              ),
              //prize detais row

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item Total',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '₹799',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'FREE',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '₹799',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(color: Color.fromARGB(255, 139, 133, 133)),
              //prize detais row

              //customer details and share
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'CUSTOMER DETAILS',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 120, 120, 120),
                    ),
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.share_outlined),
                      label: const Text(
                        'SHARE',
                        style: TextStyle(fontSize: 16),
                      ))
                ],
              ),
              //customer details and share end

              //customer name number whatsapp icon and call icon

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('+91-7829000484',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w300))
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/phone.png',
                          height: 32,
                          width: 32,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/whatsapp.png',
                          height: 51,
                          width: 51,
                        ),
                      )
                    ],
                  )
                ],
              ),

              //customer name number whatsapp icon and call icon end
              const SizedBox(
                height: 25,
              ),
              //address

              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'D 1101 Chartered Beverly',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hills ,Subramanyapura P.O',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ],
              ),
              //address end
              const Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'City',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'Pincode',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Bangalore',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Text(
                    '560061',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    'Payment',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Online',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 185, 213, 186),
                        border: Border.all(color: Colors.green.shade500)),
                    height: 25,
                    width: 65,
                    child: const Center(
                      child: Text(
                        'PAID',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.green),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(color: Color.fromARGB(255, 139, 133, 133)),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    'ADDITIONAL INFORMATION',
                    style: TextStyle(
                      color: Color.fromARGB(255, 120, 120, 120),
                      fontSize: 16,
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    'State',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 4,
              ),
              const Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    'Karnataka',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 4,
              ),
              const Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    'greeniceaqua@gmail.com',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
                  )),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(500, 50)),
                  elevation: const MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  setState(() {
                    _isPressed = true;
                    Timer(const Duration(milliseconds: 100), () {
                      setState(() {
                        _isPressed = false;
                      });
                    });
                    // Add your button press logic here
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: _isPressed
                        ? Colors.blue.withOpacity(0.2)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Share receipt',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: _isPressed ? Colors.white : Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
