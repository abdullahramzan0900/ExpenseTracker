import 'package:expensetracker/Widgets/ExpensesList/Expense_item.dart';
import 'package:expensetracker/modal/Expense.dart';
import 'package:flutter/widgets.dart';
import 'package:expensetracker/Widgets/Expenses.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({super.key,required this.expenses});

  final List<Expense> expenses;

  @override

  Widget build(BuildContext context) {
   return ListView.builder(itemCount:expenses.length,itemBuilder: (ctx,index){
  return ExpenseItem(
    expenses[index]);
   });// should create a scrollable and only create the list when the item are vsivble or about ot visible
  }
}