// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chore.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ChoreCollectionReference
    implements
        ChoreQuery,
        FirestoreCollectionReference<Chore, ChoreQuerySnapshot> {
  factory ChoreCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ChoreCollectionReference;

  static Chore fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Chore.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Chore value,
    SetOptions? options,
  ) {
    return _$ChoreToJson(value);
  }

  @override
  CollectionReference<Chore> get reference;

  @override
  ChoreDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ChoreDocumentReference> add(Chore value);
}

class _$ChoreCollectionReference extends _$ChoreQuery
    implements ChoreCollectionReference {
  factory _$ChoreCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ChoreCollectionReference._(
      firestore.collection('chores').withConverter(
            fromFirestore: ChoreCollectionReference.fromFirestore,
            toFirestore: ChoreCollectionReference.toFirestore,
          ),
    );
  }

  _$ChoreCollectionReference._(
    CollectionReference<Chore> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Chore> get reference =>
      super.reference as CollectionReference<Chore>;

  @override
  ChoreDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ChoreDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ChoreDocumentReference> add(Chore value) {
    return reference.add(value).then((ref) => ChoreDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChoreCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ChoreDocumentReference
    extends FirestoreDocumentReference<Chore, ChoreDocumentSnapshot> {
  factory ChoreDocumentReference(DocumentReference<Chore> reference) =
      _$ChoreDocumentReference;

  DocumentReference<Chore> get reference;

  /// A reference to the [ChoreCollectionReference] containing this document.
  ChoreCollectionReference get parent {
    return _$ChoreCollectionReference(reference.firestore);
  }

  @override
  Stream<ChoreDocumentSnapshot> snapshots();

  @override
  Future<ChoreDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
  });
}

class _$ChoreDocumentReference
    extends FirestoreDocumentReference<Chore, ChoreDocumentSnapshot>
    implements ChoreDocumentReference {
  _$ChoreDocumentReference(this.reference);

  @override
  final DocumentReference<Chore> reference;

  /// A reference to the [ChoreCollectionReference] containing this document.
  ChoreCollectionReference get parent {
    return _$ChoreCollectionReference(reference.firestore);
  }

  @override
  Stream<ChoreDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ChoreDocumentSnapshot._);
  }

  @override
  Future<ChoreDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ChoreDocumentSnapshot._);
  }

  @override
  Future<ChoreDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ChoreDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$ChoreFieldMap['name']!: _$ChorePerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$ChoreFieldMap['name']!: nameFieldValue,
      if (date != _sentinel)
        _$ChoreFieldMap['date']!: _$ChorePerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null) _$ChoreFieldMap['date']!: dateFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$ChoreFieldMap['name']!: _$ChorePerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$ChoreFieldMap['name']!: nameFieldValue,
      if (date != _sentinel)
        _$ChoreFieldMap['date']!: _$ChorePerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null) _$ChoreFieldMap['date']!: dateFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ChoreDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ChoreQuery implements QueryReference<Chore, ChoreQuerySnapshot> {
  @override
  ChoreQuery limit(int limit);

  @override
  ChoreQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ChoreQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ChoreQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ChoreQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ChoreQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ChoreQuery whereDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });

  ChoreQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  });

  ChoreQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  });

  ChoreQuery orderByDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  });
}

class _$ChoreQuery extends QueryReference<Chore, ChoreQuerySnapshot>
    implements ChoreQuery {
  _$ChoreQuery(
    this._collection, {
    required Query<Chore> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ChoreQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ChoreQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ChoreQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ChoreQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ChoreQuery limit(int limit) {
    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChoreQuery limitToLast(int limit) {
    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ChoreQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChoreQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChoreQuery whereDocumentId({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChoreQuery whereName({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChoreFieldMap['name']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$ChorePerFieldToJson.name(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$ChorePerFieldToJson.name(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$ChorePerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChorePerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChorePerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChorePerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChorePerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$ChorePerFieldToJson.name(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChoreQuery whereDate({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChoreFieldMap['date']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$ChorePerFieldToJson.date(isEqualTo as DateTime)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$ChorePerFieldToJson.date(isNotEqualTo as DateTime)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$ChorePerFieldToJson.date(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChorePerFieldToJson.date(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChorePerFieldToJson.date(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChorePerFieldToJson.date(isGreaterThanOrEqualTo as DateTime)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ChorePerFieldToJson.date(e)),
        whereNotIn: whereNotIn?.map((e) => _$ChorePerFieldToJson.date(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChoreQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChoreQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ChoreFieldMap['name']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChoreQuery orderByDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChoreDocumentSnapshot? startAtDocument,
    ChoreDocumentSnapshot? endAtDocument,
    ChoreDocumentSnapshot? endBeforeDocument,
    ChoreDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ChoreFieldMap['date']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChoreQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChoreQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ChoreDocumentSnapshot extends FirestoreDocumentSnapshot<Chore> {
  ChoreDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Chore> snapshot;

  @override
  ChoreDocumentReference get reference {
    return ChoreDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Chore? data;
}

class ChoreQuerySnapshot
    extends FirestoreQuerySnapshot<Chore, ChoreQueryDocumentSnapshot> {
  ChoreQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ChoreQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Chore> snapshot,
  ) {
    final docs = snapshot.docs.map(ChoreQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ChoreDocumentSnapshot._,
      );
    }).toList();

    return ChoreQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ChoreDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ChoreDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ChoreDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Chore> snapshot;

  @override
  final List<ChoreQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ChoreDocumentSnapshot>> docChanges;
}

class ChoreQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Chore>
    implements ChoreDocumentSnapshot {
  ChoreQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Chore> snapshot;

  @override
  final Chore data;

  @override
  ChoreDocumentReference get reference {
    return ChoreDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chore _$ChoreFromJson(Map<String, dynamic> json) => Chore(
      name: json['name'] as String,
      date: const FirestoreDateTimeConverter()
          .fromJson(json['date'] as Timestamp),
    );

const _$ChoreFieldMap = <String, String>{
  'name': 'name',
  'date': 'date',
};

// ignore: unused_element
abstract class _$ChorePerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? date(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$ChoreToJson(Chore instance) => <String, dynamic>{
      'name': instance.name,
      'date': const FirestoreDateTimeConverter().toJson(instance.date),
    };
