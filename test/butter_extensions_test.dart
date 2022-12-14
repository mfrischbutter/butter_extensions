import 'package:butter_extensions/butter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'models.dart';

void main() {
  group('main', () {
    test('test hashcode comparison', () {
      final a = TestUser('a', 1);
      final b = TestUser('a', 1);
      final c = TestUser('b', 2);

      expect(a.hashCode, b.hashCode);
      expect(a.hashCode, isNot(c.hashCode));
    });
  });

  group('iterable', () {
    test('groupBy empty list', () {
      expect([].groupBy((a) => a.key), {});
    });

    test('groubBy list with strings', () {
      final list = [
        'lorum',
        'ipsum',
        'dolor',
        'sit',
        'amet',
        'one',
        'two',
        'three',
        'four',
      ];
      expect(
        list.groupBy((a) => a.length),
        {
          5: ['lorum', 'ipsum', 'dolor', 'three'],
          3: ['sit', 'one', 'two'],
          4: ['amet', 'four']
        },
      );
    });

    test('groubBy list with models', () {
      final list = [
        TestUser('Peter', 73),
        TestUser('Michael', 25),
        TestUser('Parker', 64),
        TestUser('Sarah', 12),
        TestUser('Caitlyn', 25),
        TestUser('Caitlyn', 73),
      ];
      expect(
        list.groupBy((a) => a.name).toString(),
        {
          'Peter': [TestUser('Peter', 73)],
          'Michael': [TestUser('Michael', 25)],
          'Parker': [TestUser('Parker', 64)],
          'Sarah': [TestUser('Sarah', 12)],
          'Caitlyn': [TestUser('Caitlyn', 25), TestUser('Caitlyn', 73)],
        }.toString(),
      );

      expect(
        list.groupBy((a) => a.age).toString(),
        {
          73: [TestUser('Peter', 73), TestUser('Caitlyn', 73)],
          25: [TestUser('Michael', 25), TestUser('Caitlyn', 25)],
          64: [TestUser('Parker', 64)],
          12: [TestUser('Sarah', 12)],
        }.toString(),
      );
    });
    test('sum', () {
      expect([1.34, 84, 29, 1.995].sum(), closeTo(116.335, 0.001));
    });
  });

  group('string', () {
    test('lengthBetween', () {
      expect(''.lengthBetween(0, 0), true);
      expect('test'.lengthBetween(0, 3), false);
      expect('test'.lengthBetween(0, 4), true);
      expect('test'.lengthBetween(0, 5), true);
    });
    test('minLength', () {
      expect(''.minLength(0), true);
      expect('test'.minLength(0), true);
      expect('test'.minLength(4), true);
      expect('test'.minLength(5), false);
    });

    test('maxLength', () {
      expect(''.maxLength(0), true);
      expect('test'.maxLength(0), false);
      expect('test'.maxLength(4), true);
      expect('test'.maxLength(5), true);
    });
  });

  group('widget', () {
    test('paddingAll', () {
      final Padding container = Container().paddingAll(10);
      expect(
        container.padding,
        const EdgeInsets.all(10),
      );
    });

    test('paddingFromLTRB', () {
      final Padding container = Container().paddingFromLTRB(10, 20, 30, 40);
      expect(
        container.padding,
        const EdgeInsets.fromLTRB(10, 20, 30, 40),
      );
    });
    test('paddingOnly', () {
      final Padding container = Container().paddingOnly(left: 10, right: 20);
      expect(
        container.padding,
        const EdgeInsets.only(left: 10, right: 20),
      );
    });
    test('paddingSymmetric', () {
      final Padding container =
          Container().paddingSymmetric(horizontal: 10, vertical: 20);
      expect(
        container.padding,
        const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      );
    });
  });

  group('datetime', () {
    test('isToday', () {
      expect(DateTime.now().isToday, true);
      expect(DateTime.now().subtract(const Duration(days: 1)).isToday, false);
    });

    test('isYesterday', () {
      expect(DateTime.now().isYesterday, false);
      expect(
          DateTime.now().subtract(const Duration(days: 1)).isYesterday, true);
    });

    test('isTomorrow', () {
      expect(DateTime.now().isTomorrow, false);
      expect(DateTime.now().add(const Duration(days: 1)).isTomorrow, true);
    });
  });
}
