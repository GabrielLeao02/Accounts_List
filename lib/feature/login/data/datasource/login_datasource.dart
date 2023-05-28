import 'package:dio/dio.dart';
import 'package:news_list/feature/login/data/model/user.dart';
import 'package:news_list/share/base/datasource/data_source.dart';

abstract class UserDataSource implements DataSource<User> {}

class UserDataSourceImpl implements UserDataSource {
  final endPoint = '';
  final Dio _httpFacade;

  UserDataSourceImpl(this._httpFacade);

  @override
  Future<User> call({Map<String, dynamic>? param, FromJson? fromJson}) async {
    // ignore: unused_local_variable
    //Response response = await _httpFacade.get(endPoint);
    Map<String, dynamic> data = {
      "user": {
        "nome": "Gabriel Eduardo G Leão",
        "email": "gabriel.edg210@gmail.com",
        "image":
            "https://media.licdn.com/dms/image/D4D03AQE0495VLf4lcA/profile-displayphoto-shrink_800_800/0/1681690509715?e=1690416000&v=beta&t=6sCAtd-BPMh8MoHq2TsMZqmwrQdYPmei4_jvzTEAT2o"
      }
    };
    return fromJson!(data["user"]);
  }
}
