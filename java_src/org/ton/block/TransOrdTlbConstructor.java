package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Maybe;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: TransOrd.kt */
/* loaded from: classes6.dex */
final class TransOrdTlbConstructor extends org.ton.tlb.TlbConstructor<TransOrd> {
    public static final TransOrdTlbConstructor INSTANCE = new TransOrdTlbConstructor();
    private static final TlbCodec<Maybe<CellRef<TrActionPhase>>> maybeTrActionPhase;
    private static final TlbCodec<Maybe<TrBouncePhase>> maybeTrBouncePhase;
    private static final TlbCodec<Maybe<TrCreditPhase>> maybeTrCreditPhase;
    private static final TlbCodec<Maybe<TrStoragePhase>> maybeTrStoragePhase;

    private TransOrdTlbConstructor() {
        super("trans_ord$0000 credit_first:Bool storage_ph:(Maybe TrStoragePhase) credit_ph:(Maybe TrCreditPhase) compute_ph:TrComputePhase action:(Maybe ^TrActionPhase) aborted:Bool bounce:(Maybe TrBouncePhase) destroyed:Bool = TransactionDescr;", null, 2, null);
    }

    static {
        Maybe.Companion companion = Maybe.Companion;
        maybeTrStoragePhase = companion.tlbCodec(TrStoragePhase.Companion);
        maybeTrCreditPhase = companion.tlbCodec(TrCreditPhase.Companion);
        maybeTrActionPhase = companion.tlbCodec(CellRef.Companion.tlbCodec(TrActionPhase.Companion));
        maybeTrBouncePhase = companion.tlbCodec(TrBouncePhase.Companion);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransOrd value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getCreditFirst());
        maybeTrStoragePhase.storeTlb(cellBuilder, value.getStoragePh());
        maybeTrCreditPhase.storeTlb(cellBuilder, value.getCreditPh());
        TrComputePhase.Companion.storeTlb(cellBuilder, (CellBuilder) value.getComputePh());
        maybeTrActionPhase.storeTlb(cellBuilder, value.getAction());
        cellBuilder.storeBit(value.getAborted());
        maybeTrBouncePhase.storeTlb(cellBuilder, value.getBounce());
        cellBuilder.storeBit(value.getDestroyed());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransOrd loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TransOrd(cellSlice.loadBit(), maybeTrStoragePhase.loadTlb(cellSlice), maybeTrCreditPhase.loadTlb(cellSlice), TrComputePhase.Companion.loadTlb(cellSlice), maybeTrActionPhase.loadTlb(cellSlice), cellSlice.loadBit(), maybeTrBouncePhase.loadTlb(cellSlice), cellSlice.loadBit());
    }
}
