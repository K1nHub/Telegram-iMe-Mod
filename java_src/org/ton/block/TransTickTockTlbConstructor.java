package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: TransTickTock.kt */
/* loaded from: classes6.dex */
final class TransTickTockTlbConstructor extends org.ton.tlb.TlbConstructor<TransTickTock> {
    public static final TransTickTockTlbConstructor INSTANCE = new TransTickTockTlbConstructor();
    private static final TlbCodec<Maybe<CellRef<TrActionPhase>>> maybeTrActionPhase = Maybe.Companion.tlbCodec(CellRef.Companion.tlbCodec(TrActionPhase.Companion));

    private TransTickTockTlbConstructor() {
        super("trans_tick_tock$001 is_tock:Bool storage_ph:TrStoragePhase\n  compute_ph:TrComputePhase action:(Maybe ^TrActionPhase)\n  aborted:Bool destroyed:Bool = TransactionDescr;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransTickTock value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.isTock());
        TrStoragePhase.Companion.storeTlb(cellBuilder, (CellBuilder) value.getStoragePh());
        TrComputePhase.Companion.storeTlb(cellBuilder, (CellBuilder) value.getComputePh());
        maybeTrActionPhase.storeTlb(cellBuilder, value.getAction());
        cellBuilder.storeBit(value.getAborted());
        cellBuilder.storeBit(value.getDestroyed());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransTickTock loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TransTickTock(cellSlice.loadBit(), TrStoragePhase.Companion.loadTlb(cellSlice), TrComputePhase.Companion.loadTlb(cellSlice), maybeTrActionPhase.loadTlb(cellSlice), cellSlice.loadBit(), cellSlice.loadBit());
    }
}
