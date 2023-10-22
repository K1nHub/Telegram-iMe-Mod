package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TrCreditPhase.kt */
/* loaded from: classes6.dex */
public final class TrCreditPhaseTlbConstructor extends org.ton.tlb.TlbConstructor<TrCreditPhase> {
    public static final TrCreditPhaseTlbConstructor INSTANCE = new TrCreditPhaseTlbConstructor();
    private static final TlbCodec<Maybe<Coins>> maybeCoins = Maybe.Companion.tlbCodec(Coins.Companion);

    private TrCreditPhaseTlbConstructor() {
        super("tr_phase_credit$_ due_fees_collected:(Maybe Coins) credit:CurrencyCollection = TrCreditPhase;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrCreditPhase value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        maybeCoins.storeTlb(cellBuilder, value.getDueFeesCollected());
        CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.getCredit());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrCreditPhase loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TrCreditPhase(maybeCoins.loadTlb(cellSlice), CurrencyCollection.Companion.loadTlb(cellSlice));
    }
}
