import 'package:quest_tracker/src/models/colors.dart';
import 'package:quest_tracker/src/models/filter_state.dart';
import 'package:react/react.dart' as react;
import 'package:react/react_dom.dart' as react_dom;
import 'package:react/react_client.dart';
import 'package:over_react/over_react.dart';

@Factory()
UiFactory<AppProps> App;

@Props()
class AppProps extends UiProps {
  String appTitle;
}

@State()
class AppBarState extends UiState {
  FilterState activeFilter;
}

@Component()
class MaterialButtonComponent
    extends UiStatefulComponent<AppProps, AppBarState> {
  @override
  Map getInitialState() => (newState()..activeFilter = new FilterState.asAll());

  @override
  render() {
    return (Dom.div()..className = "mdl-layout mdl-js-layout")(
      appHeader(),
      (Dom.main()..className = "mdl-layout__content")(
        (Dom.div()..className = "page-content")(),
      ),
    );
  }

  appHeader() {
    return (Dom.header()
      ..style = {ColorKey.background: Color.primary}
      ..className = "mdl-layout__header mdl-layout__header--scroll")(
      (Dom.div()..className = "mdl-layout__header-row")(
        appTitle(),
        filterGroup(),
      ),
    );
  }

  appTitle() {
    return [
      (Dom.span()
        ..style = {ColorKey.foreground: Color.secondary}
        ..className = "mdl-layout-title")(props.appTitle),
      (Dom.div()..className = "mdl-layout-spacer")(),
    ];
  }

  filterGroup() {
    return (Dom.nav()..className = "mdl-navigation")(
      filterButton(FilterState.all),
      filterButton(FilterState.done),
      filterButton(FilterState.notDone),
    );
  }

  filterButton(String filter) {
    if (filter == state.activeFilter.state) {
      return (Dom.button()
        ..style = {ColorKey.foreground: Color.accent}
        ..className = "mdl-button mdl-js-button mdl-button--primary"
        ..onClick = (_) => setFilter(filter))(filter);
    }
    return (Dom.button()
      ..style = {ColorKey.foreground: Color.secondary}
      ..className = "mdl-button mdl-js-button mdl-button--accent"
      ..onClick = (_) => setFilter(filter))(filter);
  }

  setFilter(String state) {
    setState(newState()..activeFilter = new FilterState(state));
  }
}
