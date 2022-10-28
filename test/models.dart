class TestUser {
  String name;
  int age;

  TestUser(this.name, this.age);

  @override
  bool operator ==(other) {
    return (other is TestUser) && other.name == name && other.age == age;
  }

  @override
  int get hashCode => age.hashCode ^ name.hashCode;

  @override
  String toString() => 'TestUser($name, $age)';
}
