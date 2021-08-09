library serializers;

import 'package:built_value/serializer.dart';
import 'package:flutter_demos/models/person.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Person,
  Gender,
])
final Serializers serializers = _$serializers;
