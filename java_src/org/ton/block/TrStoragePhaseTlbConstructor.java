package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TrStoragePhase.kt */
/* loaded from: classes6.dex */
public final class TrStoragePhaseTlbConstructor extends org.ton.tlb.TlbConstructor<TrStoragePhase> {
    public static final TrStoragePhaseTlbConstructor INSTANCE = new TrStoragePhaseTlbConstructor();
    private static final TlbCodec<Maybe<Coins>> maybeCoins = Maybe.Companion.tlbCodec(Coins.Companion);

    private TrStoragePhaseTlbConstructor() {
        super("tr_phase_storage$_ storage_fees_collected:Coins storage_fees_due:(Maybe Coins) status_change:AccStatusChange = TrStoragePhase;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrStoragePhase value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getStorageFeesCollected());
        maybeCoins.storeTlb(cellBuilder, value.getStorageFeesDue());
        AccStatusChange.Companion.storeTlb(cellBuilder, (CellBuilder) value.getStatusChange());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrStoragePhase loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TrStoragePhase(Coins.Companion.loadTlb(cellSlice), maybeCoins.loadTlb(cellSlice), AccStatusChange.Companion.loadTlb(cellSlice));
    }
}
