package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TrPhaseBounceNegFunds.kt */
/* loaded from: classes6.dex */
final class TrPhaseBounceNegFundsTlbConstructor extends org.ton.tlb.TlbConstructor<TrPhaseBounceNegFunds> {
    public static final TrPhaseBounceNegFundsTlbConstructor INSTANCE = new TrPhaseBounceNegFundsTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrPhaseBounceNegFunds value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private TrPhaseBounceNegFundsTlbConstructor() {
        super("tr_phase_bounce_negfunds$00 = TrBouncePhase;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrPhaseBounceNegFunds loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return TrPhaseBounceNegFunds.INSTANCE;
    }
}
