import 'package:fish_demo/activity_component/component.dart';
import 'package:fish_demo/destination_component/component.dart';
import 'package:fish_demo/discover_component/component.dart';
import 'package:fish_demo/mine_component/component.dart';
import 'package:fish_demo/vehicle_component/component.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import 'adapter.dart';

class TabbarPage extends Page<TabbarState, Map<String, dynamic>> {
  TabbarPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<TabbarState>(
              adapter: NoneConn<TabbarState>() + TabbarAdapter(),
              slots: <String, Dependent<TabbarState>>{
                'vehicle': VehicleConnector() + VehicleComponent(),
                'destination': DestinationConnector() + DestinationComponent(),
                'discover': DiscoverConnector() + DiscoverComponent(),
                'activity': ActivityConnector() + ActivityComponent(),
                'mine': MineConnector() + MineComponent()
              }),
          middleware: <Middleware<TabbarState>>[],
        );
}
