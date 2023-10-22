package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgImportFin.kt */
/* loaded from: classes6.dex */
final class MsgImportFinTlbConstructor extends org.ton.tlb.TlbConstructor<MsgImportFin> {
    public static final MsgImportFinTlbConstructor INSTANCE = new MsgImportFinTlbConstructor();

    private MsgImportFinTlbConstructor() {
        super("msg_import_fin$100 in_msg:^MsgEnvelope transaction:^Transaction fwd_fee:Coins = InMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgImportFin value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getInMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.storeRef(value.getTransaction().toCell(Transaction.Companion));
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getFwdFee());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgImportFin loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion2 = CellRef.Companion;
        return new MsgImportFin(companion2.valueOf(loadRef, (TlbCodec) companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) Transaction.Companion), Coins.Companion.loadTlb(cellSlice));
    }
}
