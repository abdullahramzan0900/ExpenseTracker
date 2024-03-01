import 'package:expensetracker/Widgets/ExpensesList/expenses_List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:expensetracker/modal/Expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

 @override
  State<Expenses> createState() {
    return _ExpensesState();
  }

}
  class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses=[

    Expense(
      title:'flutter course',
      amount:12.99,
      date:DateTime.now(),
      category: Category.food

    ),
        Expense(
      title:'Cinema',
      amount:12.99,
      date:DateTime.now(),
      category: Category.leisure

    )
  ];
  void _openAddExpensiveOverlay(){
     showModalBottomSheet(context: context, builder: (ctx){
      return  const  Text("show model");
     });
  }
    @override
    Widget build(BuildContext context){
           return Scaffold(
            appBar: AppBar(
              title: const Text("Expense Tracker"),
              
              actions: [
                IconButton(onPressed: _openAddExpensiveOverlay, icon: const Icon(Icons.add))
              ],
            ),
            backgroundColor:Colors.white  ,
            body:Column(
             children: [
              const Text('The Chart'),
              Expanded(child:ExpensesList(expenses: _registeredExpenses)),
             
              ],
            )
           );
    }

  }