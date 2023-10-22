package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgExportDeqImm.kt */
/* loaded from: classes6.dex */
final class MsgExportDeqImmTlbConstructor extends org.ton.tlb.TlbConstructor<MsgExportDeqImm> {
    public static final MsgExportDeqImmTlbConstructor INSTANCE = new MsgExportDeqImmTlbConstructor();

    private MsgExportDeqImmTlbConstructor() {
        super("msg_export_deq_imm$100 out_msg:^MsgEnvelope reimport:^InMsg = OutMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgExportDeqImm value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getOutMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.storeRef(value.getReimport().toCell(InMsg.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgExportDeqImm loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion2 = CellRef.Companion;
        return new MsgExportDeqImm(companion2.valueOf(loadRef, (TlbCodec) companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) InMsg.Companion));
    }
}
