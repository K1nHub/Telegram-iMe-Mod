package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgImportExt.kt */
/* loaded from: classes6.dex */
final class MsgImportExtTlbConstructor extends org.ton.tlb.TlbConstructor<MsgImportExt> {
    public static final MsgImportExtTlbConstructor INSTANCE = new MsgImportExtTlbConstructor();

    private MsgImportExtTlbConstructor() {
        super("msg_import_ext$000 msg:^(Message Any) transaction:^Transaction = InMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgImportExt value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getMsg().toCell(Message.Companion.getAny()));
        cellBuilder.storeRef(value.getTransaction().toCell(Transaction.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgImportExt loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        org.ton.tlb.TlbConstructor<Message<Cell>> any = Message.Companion.getAny();
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion = CellRef.Companion;
        return new MsgImportExt(companion.valueOf(loadRef, (TlbCodec) any), companion.valueOf(cellSlice.loadRef(), (TlbCodec) Transaction.Companion));
    }
}
