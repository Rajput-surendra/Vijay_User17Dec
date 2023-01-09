import 'package:flutter/material.dart';
class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  int _selectedIndex = 0;

  late PageController _pageController;


  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(()
                        { _selectedIndex = 0 ;});
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text("Ongoing")),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(()
                        { _selectedIndex = 1 ;});
                      },
                      child: Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text("Complete")),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(()
                        { _selectedIndex = 2 ;});
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.green,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text("Cancelled")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child : _selectedIndex == 0 ? Text("Ongoing"): _selectedIndex == 1? Text("Complete"): Text("Cancelled")),

          ],
        ),
      ),
    );
  }
}
