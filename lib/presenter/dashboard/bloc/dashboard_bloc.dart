import 'dart:async';


enum DashboardPage { home, classroom, news }

class DashboardBloc {
  StreamController<DashboardPage> controller = StreamController<DashboardPage>.broadcast();
  DashboardPage initialData = DashboardPage.home;

  Stream<DashboardPage> get stream => controller.stream;

  dispose() {
    controller.close();
  }

  reOpen() {
    if (controller.isClosed) {
      controller = StreamController<DashboardPage>.broadcast();
    }
  }

  
}
