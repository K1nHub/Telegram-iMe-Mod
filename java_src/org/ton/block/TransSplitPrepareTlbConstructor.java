package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Maybe;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: TransSplitPrepare.kt */
/* loaded from: classes6.dex */
final class TransSplitPrepareTlbConstructor extends org.ton.tlb.TlbConstructor<TransSplitPrepare> {
    public static final TransSplitPrepareTlbConstructor INSTANCE = new TransSplitPrepareTlbConstructor();
    private static final TlbCodec<Maybe<CellRef<TrActionPhase>>> maybeTrActionPhase;
    private static final TlbCodec<Maybe<TrStoragePhase>> maybeTrStoragePhase;

    private TransSplitPrepareTlbConstructor() {
        super("trans_split_prepare$0100   split_info:SplitMergeInfo\n  storage_ph:(Maybe TrStoragePhase)\n  compute_ph:TrComputePhase   action:(Maybe ^TrActionPhase)\n  aborted:Bool destroyed:Bool\n  = TransactionDescr;", null, 2, null);
    }

    static {
        Maybe.Companion companion = Maybe.Companion;
        maybeTrStoragePhase = companion.tlbCodec(TrStoragePhase.Companion);
        maybeTrActionPhase = companion.tlbCodec(CellRef.Companion.tlbCodec(TrActionPhase.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransSplitPrepare value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        SplitMergeInfo.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSplitInfo());
        maybeTrStoragePhase.storeTlb(cellBuilder, value.getStoragePh());
        TrComputePhase.Companion.storeTlb(cellBuilder, (CellBuilder) value.getComputePh());
        maybeTrActionPhase.storeTlb(cellBuilder, value.getAction());
        cellBuilder.storeBit(value.getAborted());
        cellBuilder.storeBit(value.getDestroyed());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransSplitPrepare loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TransSplitPrepare(SplitMergeInfo.Companion.loadTlb(cellSlice), maybeTrStoragePhase.loadTlb(cellSlice), TrComputePhase.Companion.loadTlb(cellSlice), maybeTrActionPhase.loadTlb(cellSlice), cellSlice.loadBit(), cellSlice.loadBit());
    }
}
