package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgExportTr.kt */
/* loaded from: classes6.dex */
final class MsgExportTrTlbConstructor extends org.ton.tlb.TlbConstructor<MsgExportTr> {
    public static final MsgExportTrTlbConstructor INSTANCE = new MsgExportTrTlbConstructor();

    private MsgExportTrTlbConstructor() {
        super("msg_export_tr$011 out_msg:^MsgEnvelope imported:^InMsg = OutMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgExportTr value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getOutMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.storeRef(value.getImported().toCell(InMsg.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgExportTr loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion2 = CellRef.Companion;
        return new MsgExportTr(companion2.valueOf(loadRef, (TlbCodec) companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) InMsg.Companion));
    }
}
