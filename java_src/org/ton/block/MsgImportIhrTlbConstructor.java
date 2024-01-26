package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: MsgImportIhr.kt */
/* loaded from: classes6.dex */
final class MsgImportIhrTlbConstructor extends org.ton.tlb.TlbConstructor<MsgImportIhr> {
    public static final MsgImportIhrTlbConstructor INSTANCE = new MsgImportIhrTlbConstructor();

    private MsgImportIhrTlbConstructor() {
        super("msg_import_ihr$010 msg:^(Message Any) transaction:^Transaction ihr_fee:Grams proof_created:^Cell = InMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgImportIhr value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getMsg().toCell(Message.Companion.getAny()));
        cellBuilder.storeRef(value.getTransaction().toCell(Transaction.Companion));
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getIhrFee());
        cellBuilder.storeRef(value.getProofCreated());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgImportIhr loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        org.ton.tlb.TlbConstructor<Message<Cell>> any = Message.Companion.getAny();
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion = CellRef.Companion;
        return new MsgImportIhr(companion.valueOf(loadRef, (TlbCodec) any), companion.valueOf(cellSlice.loadRef(), (TlbCodec) Transaction.Companion), Coins.Companion.loadTlb(cellSlice), cellSlice.loadRef());
    }
}
