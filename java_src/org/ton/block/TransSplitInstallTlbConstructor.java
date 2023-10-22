package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Transaction;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: TransSplitInstall.kt */
/* loaded from: classes6.dex */
final class TransSplitInstallTlbConstructor extends org.ton.tlb.TlbConstructor<TransSplitInstall> {
    public static final TransSplitInstallTlbConstructor INSTANCE = new TransSplitInstallTlbConstructor();

    private TransSplitInstallTlbConstructor() {
        super("trans_split_install$0101 split_info:SplitMergeInfo\n  prepare_transaction:^Transaction\n  installed:Bool = TransactionDescr;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransSplitInstall value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        SplitMergeInfo.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSplitInfo());
        cellBuilder.storeRef(value.getPrepareTransaction().toCell(Transaction.Companion));
        cellBuilder.storeBit(value.getInstalled());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransSplitInstall loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        Transaction.Companion companion = Transaction.Companion;
        return new TransSplitInstall(SplitMergeInfo.Companion.loadTlb(cellSlice), CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), cellSlice.loadBit());
    }
}
