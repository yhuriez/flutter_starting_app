import 'package:flutter/material.dart';
import 'package:flutter_starting_app/views/common/style/colors.dart';
import 'package:flutter_starting_app/views/common/style/input_styles.dart';
import 'package:flutter_starting_app/views/common/style/sizes.dart';
import 'package:flutter_starting_app/views/common/widgets/dialogs/ful_screen_text_input_dialog.dart';
import 'package:provider/provider.dart';
import '../../models/item.dart';
import 'item_state.dart';


class ItemPage extends StatelessWidget {

  static const String routeName = "";

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => ItemPage(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ItemState(),
        child: SafeArea(
            child: Scaffold(
                body: _HomeBody())));
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // context.watch is an extension shortcut to get the wanted provider and listen to
    // any state changes (notifyListeners has been called). the "build" function is recalled when
    // this occurs.
    // You can use context.select instead if you want to listen to only a portion of your state.
    final state = context.watch<ItemState>();

    return Column(

      children: [

        _AddItemInput(),


        Expanded(child: ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            return _ItemElement(item: state.items[index]);
          },
        ))
      ],
    );
  }
}

class _AddItemInput extends StatefulWidget {

  const _AddItemInput({Key? key}) : super(key: key);

  @override
  State<_AddItemInput> createState() => _AddItemInputState();
}

class _AddItemInputState extends State<_AddItemInput> {

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(largeSpace),
      child: Row(
        children: [
          Expanded(child: TextField(
            controller: _controller,
            decoration: createInputDecoration(hint: "Add new item"),
            textInputAction: TextInputAction.done,
            onSubmitted: (value) => onAddItem(context),
          )),

          // When adding separation between elements in a Row or Column,
          // prefer using SizedBox instead of Padding for better readability
          SizedBox(height: largeSpace,),

          IconButton(onPressed: () => onAddItem(context), icon: Icon(Icons.add))
        ],
      ),
    );
  }

  onAddItem(BuildContext context) {

    final state = context.read<ItemState>();
    state.create(_controller.text);
    _controller.text = ""; // Reset text field value
  }
}


class _ItemElement extends StatelessWidget {

  final Item item;

  const _ItemElement({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: baseSpace, horizontal: largeSpace),
      child: Card(
        color: themeBackgroundColor,
        child: ListTile(
          onTap: () =>  showModifyDialog(context),
          title: Text(item.value),
          trailing: IconButton(onPressed: () => onDeleteItem(context), icon: Icon(Icons.delete)),
        ),
      ),
    );
  }

  void showModifyDialog(BuildContext context) async {
    final newValue = await Navigator.of(context).push(FullScreenTextInputDialog.route(title: "Modify item", initialValue: item.value));

    if(newValue != null) {
      final state = context.read<ItemState>();
      state.update(item.copyWith(value: newValue));
    }
  }

  void onDeleteItem(BuildContext context) {
    final state = context.read<ItemState>();
    state.delete(item.uid);
  }
}
