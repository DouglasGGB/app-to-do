import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatelessWidget{
  const CustomButtonNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.55,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromRGBO(39, 40, 41, 0.4)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: IconBottomBar(
              text: "New Event", 
              iconData: Icons.add, 
              isSelected: false, 
              onPressed: (){}),
          ),
          Expanded(
            child: IconBottomBar(
              text: "Moth", 
              iconData:  Icons.calendar_today, 
              isSelected: false, 
              onPressed: (){
                
              }),
          ),
          Expanded(
            child: IconBottomBar(
              text: "Week", 
              iconData: Icons.calendar_today, 
              isSelected: false, 
              onPressed: (){}),
          ),
          Expanded(
            child: IconBottomBar(
              text: "Day", 
              iconData: Icons.calendar_today, 
              isSelected: true, 
              onPressed: (){}),
          ),
        ],
      ),
    );
  }

}

class IconBottomBar extends StatelessWidget{
  final String text;
  final IconData iconData;
  final bool isSelected;
  final Function() onPressed;
  const IconBottomBar(
    {super.key, 
    required this.text, 
    required this.iconData, 
    required this.isSelected, 
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: onPressed, 
        icon: Icon(
          iconData,
          size: 20,
          color: isSelected ?Colors.white :const Color.fromRGBO(113, 45, 182, 0.842),
        )),
      Text(text,style: TextStyle(
        fontSize: 12,
        height: .1,
        color: isSelected ? Colors.white :const Color.fromRGBO(113, 45, 182, 0.842),
        )),

    ],
   );
  }

}