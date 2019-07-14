import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class VerticalMenuBloc extends BlocBase {    

  var itemsController = BehaviorSubject<int>();

  @override
  void dispose() {
    itemsController.close();
    super.dispose();
  }
}
