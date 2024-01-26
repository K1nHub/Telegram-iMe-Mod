package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TransMergePrepare.kt */
/* loaded from: classes6.dex */
final class TransMergePrepareTlbConstructor extends org.ton.tlb.TlbConstructor<TransMergePrepare> {
    public static final TransMergePrepareTlbConstructor INSTANCE = new TransMergePrepareTlbConstructor();

    private TransMergePrepareTlbConstructor() {
        super("trans_merge_prepare$0110 split_info:SplitMergeInfo\n  storage_ph:TrStoragePhase aborted:Bool\n  = TransactionDescr;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransMergePrepare value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        SplitMergeInfo.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSplitInfo());
        TrStoragePhase.Companion.storeTlb(cellBuilder, (CellBuilder) value.getStoragePh());
        cellBuilder.storeBit(value.getAborted());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransMergePrepare loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TransMergePrepare(SplitMergeInfo.Companion.loadTlb(cellSlice), TrStoragePhase.Companion.loadTlb(cellSlice), cellSlice.loadBit());
    }
}
