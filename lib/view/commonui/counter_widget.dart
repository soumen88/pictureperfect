import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/core/routing/app_router.dart';

class CounterWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CounterWidgetState();
  }
}

class CounterWidgetState extends State<CounterWidget>{
  ValueNotifier<int> counterNotifier = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              context.router.navigate(BookTicketsRoute(noOfTickets: counterNotifier.value));
            },
            child: const Text(
              "Buy Tickets",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: ColorConstants.kOrange),
              onPressed: (){
                 int previousValue = counterNotifier.value;
                 previousValue++;
                 counterNotifier.value = previousValue;
                 setState(() {

                 });
              },
              child: Icon(Icons.add)
          ),
          SizedBox(width: 5,),
          Text(
            counterNotifier.value.toString(),
            style: TextStyle(
                fontSize: 28,
                color: Colors.white
            ),
          ),
          SizedBox(width: 5,),
          ElevatedButton(
              onPressed: (){
                int previousValue = counterNotifier.value;
                if(previousValue > 0){
                  previousValue--;
                  counterNotifier.value = previousValue;
                  setState(() {

                  });
                }

              },
              child: Icon(Icons.remove)
          ),
        ],
      ),
    );
  }

}