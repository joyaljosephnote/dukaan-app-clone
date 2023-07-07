import 'package:flutter/material.dart';
import 'package:ui_design/screens/payments/pyment_list.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Center(
          child: Text(
            'Payments',
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                //Transaction Limit
                Container(
                  height: 190,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 217, 215, 215),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Transaction Limit',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'A free limit upto which you will recieve\nthe online payments directly in your bank',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 113, 113, 113),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          child: LinearProgressIndicator(
                            value: 0.26,
                            valueColor: AlwaysStoppedAnimation(
                              Colors.blue[800],
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 201, 200, 200),
                            minHeight: 7,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '36,668 left out of ₹50000',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 113, 113, 113),
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blue[800]),
                            child: const Text(
                              "Increase limit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Default method
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Default Method',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Online Payments ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 113, 113, 113),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 119, 118, 117),
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //Payment Profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Payment Profile',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Bank Account ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 113, 113, 113),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 119, 118, 117),
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(), // payments overview
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payments Overview',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                    DropdownButton(
                      dropdownColor: Colors.transparent,
                      underline: const SizedBox(),
                      onChanged: (value) {},
                      items: const [],
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color.fromARGB(255, 119, 118, 117),
                      ),
                      hint: const Text(
                        'Life Time ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 113, 113, 113),
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                //orange and greeen containers start
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //orange container start
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 227, 129, 30),
                      ),
                      width: 173,
                      height: 77,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Text(
                              'AMOUNT ON HOLD',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                            child: Text(
                              '₹ 0',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                    //orange container end

                    //green container start
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 25, 154, 29),
                      ),
                      width: 173,
                      height: 77,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Text(
                              'AMOUNT RECEIVED',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                            child: Text(
                              '₹ 13,332',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                    //green container end
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Transactions',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ), //on hold payout refunds
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //on hold

                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 155, 155, 155),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Text(
                          'On hold',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),

                    //payouts

                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 57, 113, 243),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Text(
                          'Payouts (15)',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),

                    //refunds

                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 155, 155, 155),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Text(
                          'Refunds',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    //refunds end
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 85,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue,
                                    border: Border.all(width: 0.05),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          '${payments[index][0]}',
                                        ),
                                        fit: BoxFit.cover)),
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                height: 70,
                                width: 290,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${payments[index][2]}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '${payments[index][1]}',
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('${payments[index][3]}',
                                              style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16,
                                              )),
                                          const Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                size: 15,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Successful',
                                                style: TextStyle(fontSize: 15),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '${payments[index][1]} deposited to 58860200000138',
                            style: const TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                                fontSize: 12),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
