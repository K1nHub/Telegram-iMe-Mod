package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgExportImm.kt */
/* loaded from: classes6.dex */
final class MsgExportImmTlbConstructor extends org.ton.tlb.TlbConstructor<MsgExportImm> {
    public static final MsgExportImmTlbConstructor INSTANCE = new MsgExportImmTlbConstructor();

    private MsgExportImmTlbConstructor() {
        super("msg_export_imm$010 out_msg:^MsgEnvelope transaction:^Transaction reimport:^InMsg = OutMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgExportImm value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getOutMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.storeRef(value.getTransaction().toCell(Transaction.Companion));
        cellBuilder.storeRef(value.getReimport().toCell(InMsg.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgExportImm loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion2 = CellRef.Companion;
        return new MsgExportImm(companion2.valueOf(loadRef, (TlbCodec) companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) Transaction.Companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) InMsg.Companion));
    }
}
