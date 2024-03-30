
abstract class failure{

  final String errmessage;
  const failure(this.errmessage);
}

class ServiceFailure extends failure{
  ServiceFailure(super.errmessage);
}

