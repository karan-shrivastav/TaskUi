import 'package:flutter/material.dart';
import 'package:taskui/widgets/text_widget.dart';
import '../models/data_model.dart';

class ScanReceiptWidget extends StatefulWidget {
  const ScanReceiptWidget({super.key});

  @override
  State<ScanReceiptWidget> createState() => _ScanReceiptWidgetState();
}

class _ScanReceiptWidgetState extends State<ScanReceiptWidget> {
  List<DataModel> dataList = [
    DataModel(icon: Icons.account_circle, title: 'Personal Info'),
    DataModel(icon: Icons.qr_code_scanner_outlined, title: 'My QR Code'),
    DataModel(icon: Icons.food_bank_outlined, title: 'Bank And Cards'),
    DataModel(icon: Icons.payments, title: 'Payment Preferences'),
    DataModel(icon: Icons.refresh, title: 'Automatic Payments'),
    DataModel(icon: Icons.login_outlined, title: 'Login and Security'),
    DataModel(icon: Icons.notifications, title: 'Notifications'),
  ];

  List<DataModel> filteredList = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredList = dataList;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }


  void _onSearchChanged() {
    setState(() {
      filteredList = _searchPersonList(_searchController.text);
    });
  }

  List<DataModel> _searchPersonList(String query) {
    return dataList
        .where((Data) => Data.title!.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color(0xFFeff0f4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                      'https://image.shutterstock.com/display_pic_with_logo/818215/515426818/stock-photo-single-calm-young-indian-woman-in-blue-blouse-and-long-hair-holding-pencil-in-hand-while-seated-at-515426818.jpg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidget(
                  text: 'Mae Jamison',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  text: 'Maej@gmail.com',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: const Color(0xFFeff0f4),
                borderRadius: BorderRadius.circular(6)),
            child:  TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Transactions',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 35,
                  )),
              onChanged: (value){
                _onSearchChanged();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: filteredList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          filteredList[index].icon,
                          size: 35,
                        ),
                        title: TextWidget(
                          text: filteredList[index].title ?? '',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                        trailing: const Icon(
                          size: 15,
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        height: 0.5,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
