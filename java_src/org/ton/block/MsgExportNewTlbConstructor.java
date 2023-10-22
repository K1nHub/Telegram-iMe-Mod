package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgExportNew.kt */
/* loaded from: classes6.dex */
final class MsgExportNewTlbConstructor extends org.ton.tlb.TlbConstructor<MsgExportNew> {
    public static final MsgExportNewTlbConstructor INSTANCE = new MsgExportNewTlbConstructor();

    private MsgExportNewTlbConstructor() {
        super("msg_export_new$001 out_msg:^MsgEnvelope transaction:^Transaction = OutMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgExportNew value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getOutMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.storeRef(value.getTransaction().toCell(Transaction.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgExportNew loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion2 = CellRef.Companion;
        return new MsgExportNew(companion2.valueOf(loadRef, (TlbCodec) companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) Transaction.Companion));
    }
}
