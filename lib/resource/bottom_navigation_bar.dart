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
        color: Colors.green,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: IconBottomBar(
              text: "text", 
              iconData: Icons.add, 
              isSelected: true, 
              onPressed: (){}),
          ),
          Expanded(
            child: IconBottomBar(
              text: "text", 
              iconData: Icons.search, 
              isSelected: true, 
              onPressed: (){}),
          ),
          Expanded(
            child: IconBottomBar(
              text: "text", 
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
          color: isSelected ? Colors.black :Colors.white,
        )),
      Text(text,style: TextStyle(
        fontSize: 12,
        height: .1,
        color: isSelected ? Colors.black :Colors.white,
      ),)

    ],
   );
  }

}