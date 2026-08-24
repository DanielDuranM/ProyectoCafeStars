import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonalRecord extends FirestoreRecord {
  PersonalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "puesto" field.
  String? _puesto;
  String get puesto => _puesto ?? '';
  bool hasPuesto() => _puesto != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _correo = snapshotData['correo'] as String?;
    _puesto = snapshotData['puesto'] as String?;
    _telefono = snapshotData['telefono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('personal');

  static Stream<PersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonalRecord.fromSnapshot(s));

  static Future<PersonalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonalRecord.fromSnapshot(s));

  static PersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonalRecordData({
  String? nombre,
  String? correo,
  String? puesto,
  String? telefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'correo': correo,
      'puesto': puesto,
      'telefono': telefono,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonalRecordDocumentEquality implements Equality<PersonalRecord> {
  const PersonalRecordDocumentEquality();

  @override
  bool equals(PersonalRecord? e1, PersonalRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.correo == e2?.correo &&
        e1?.puesto == e2?.puesto &&
        e1?.telefono == e2?.telefono;
  }

  @override
  int hash(PersonalRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.correo, e?.puesto, e?.telefono]);

  @override
  bool isValidKey(Object? o) => o is PersonalRecord;
}
