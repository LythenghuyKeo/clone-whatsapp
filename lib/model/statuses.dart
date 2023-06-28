class Statuses{
  final String name;
  final String png;
  final String datetime;
  Statuses( {required String this.name,required String this.png,required String this.datetime});
}
List<Statuses> statuses = [
  Statuses(name: 'Lim', png:'http://docs.flutter.dev/assets/images/dash/dash-fainting.gif', datetime: '1 minute ago'),
  Statuses(name: 'Kim', png:'http://docs.flutter.dev/assets/images/dash/dash-fainting.gif', datetime: '2 minutes ago')
];