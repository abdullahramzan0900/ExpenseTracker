import 'package:expensetracker/modal/Expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget{
 const ExpenseItem(this.expenseitem,{super.key});
  final Expense expenseitem;                                                         
  @override
  Widget build(BuildContext context) {
  return Card( child: 
  Padding(padding: const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 16
  ),
  
  child:Column(children: [
    Text(expenseitem.title),
    const SizedBox(height: 4),
    Row(
      children: [
        Text('\$${expenseitem.amount.toStringAsFixed(2)}'),
        const Spacer(),
        Row(
          children: [
            Icon(categoryIcons[expenseitem.category]),
            const SizedBox(width: 9),
            Text(expenseitem.formattedDate)
          ],
        )
      ],
    )
  ],),
  ));
  }
}