import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario_uid" field.
  DocumentReference? _usuarioUid;
  DocumentReference? get usuarioUid => _usuarioUid;
  bool hasUsuarioUid() => _usuarioUid != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "productos" field.
  DocumentReference? _productos;
  DocumentReference? get productos => _productos;
  bool hasProductos() => _productos != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "numero_pedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  bool hasNumeroPedido() => _numeroPedido != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  void _initializeFields() {
    _usuarioUid = snapshotData['usuario_uid'] as DocumentReference?;
    _estado = snapshotData['estado'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _productos = snapshotData['productos'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _numeroPedido = castToType<int>(snapshotData['numero_pedido']);
    _total = castToType<double>(snapshotData['total']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
  DocumentReference? usuarioUid,
  String? estado,
  DateTime? fecha,
  DocumentReference? productos,
  int? cantidad,
  int? numeroPedido,
  double? total,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario_uid': usuarioUid,
      'estado': estado,
      'fecha': fecha,
      'productos': productos,
      'cantidad': cantidad,
      'numero_pedido': numeroPedido,
      'total': total,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    return e1?.usuarioUid == e2?.usuarioUid &&
        e1?.estado == e2?.estado &&
        e1?.fecha == e2?.fecha &&
        e1?.productos == e2?.productos &&
        e1?.cantidad == e2?.cantidad &&
        e1?.numeroPedido == e2?.numeroPedido &&
        e1?.total == e2?.total;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality().hash([
        e?.usuarioUid,
        e?.estado,
        e?.fecha,
        e?.productos,
        e?.cantidad,
        e?.numeroPedido,
        e?.total
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
