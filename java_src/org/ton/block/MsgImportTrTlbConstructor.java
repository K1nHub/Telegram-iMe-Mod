package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgImportTr.kt */
/* loaded from: classes6.dex */
final class MsgImportTrTlbConstructor extends org.ton.tlb.TlbConstructor<MsgImportTr> {
    public static final MsgImportTrTlbConstructor INSTANCE = new MsgImportTrTlbConstructor();

    private MsgImportTrTlbConstructor() {
        super("msg_import_tr$101  in_msg:^MsgEnvelope out_msg:^MsgEnvelope transit_fee:Coins = InMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgImportTr value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        cellBuilder.storeRef(value.getInMsg().toCell(companion));
        cellBuilder.storeRef(value.getOutMsg().toCell(companion));
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getTransitFee());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgImportTr loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion2 = CellRef.Companion;
        return new MsgImportTr(companion2.valueOf(loadRef, (TlbCodec) companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) companion), Coins.Companion.loadTlb(cellSlice));
    }
}
