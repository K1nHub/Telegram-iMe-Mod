package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Maybe;
import org.ton.block.Transaction;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: TransMergeInstall.kt */
/* loaded from: classes6.dex */
final class TransMergeInstallTlbConstructor extends org.ton.tlb.TlbConstructor<TransMergeInstall> {
    public static final TransMergeInstallTlbConstructor INSTANCE = new TransMergeInstallTlbConstructor();
    private static final TlbCodec<Maybe<CellRef<TrActionPhase>>> maybeTrActionPhase;
    private static final TlbCodec<Maybe<TrCreditPhase>> maybeTrCreditPhase;
    private static final TlbCodec<Maybe<TrStoragePhase>> maybeTrStoragePhase;

    private TransMergeInstallTlbConstructor() {
        super("trans_merge_install$0111 split_info:SplitMergeInfo\n  prepare_transaction:^Transaction\n  storage_ph:(Maybe TrStoragePhase)\n  credit_ph:(Maybe TrCreditPhase)\n  compute_ph:TrComputePhase action:(Maybe ^TrActionPhase)\n  aborted:Bool destroyed:Bool\n  = TransactionDescr;", null, 2, null);
    }

    static {
        Maybe.Companion companion = Maybe.Companion;
        maybeTrStoragePhase = companion.tlbCodec(TrStoragePhase.Companion);
        maybeTrCreditPhase = companion.tlbCodec(TrCreditPhase.Companion);
        maybeTrActionPhase = companion.tlbCodec(CellRef.Companion.tlbCodec(TrActionPhase.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransMergeInstall value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        SplitMergeInfo.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSplitInfo());
        cellBuilder.storeRef(value.getPrepareTransaction().toCell(Transaction.Companion));
        maybeTrStoragePhase.storeTlb(cellBuilder, value.getStoragePh());
        maybeTrCreditPhase.storeTlb(cellBuilder, value.getCreditPh());
        TrComputePhase.Companion.storeTlb(cellBuilder, (CellBuilder) value.getComputePh());
        maybeTrActionPhase.storeTlb(cellBuilder, value.getAction());
        cellBuilder.storeBit(value.getAborted());
        cellBuilder.storeBit(value.getDestroyed());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransMergeInstall loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        SplitMergeInfo loadTlb = SplitMergeInfo.Companion.loadTlb(cellSlice);
        Transaction.Companion companion = Transaction.Companion;
        return new TransMergeInstall(loadTlb, CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), maybeTrStoragePhase.loadTlb(cellSlice), maybeTrCreditPhase.loadTlb(cellSlice), TrComputePhase.Companion.loadTlb(cellSlice), maybeTrActionPhase.loadTlb(cellSlice), cellSlice.loadBit(), cellSlice.loadBit());
    }
}
