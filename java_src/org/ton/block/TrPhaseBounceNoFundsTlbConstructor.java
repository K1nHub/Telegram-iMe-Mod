package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TrPhaseBounceNoFunds.kt */
/* loaded from: classes6.dex */
final class TrPhaseBounceNoFundsTlbConstructor extends org.ton.tlb.TlbConstructor<TrPhaseBounceNoFunds> {
    public static final TrPhaseBounceNoFundsTlbConstructor INSTANCE = new TrPhaseBounceNoFundsTlbConstructor();

    private TrPhaseBounceNoFundsTlbConstructor() {
        super("tr_phase_bounce_nofunds$01 msg_size:StorageUsedShort req_fwd_fees:Coins = TrBouncePhase;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrPhaseBounceNoFunds value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        StorageUsedShort.Companion.storeTlb(cellBuilder, (CellBuilder) value.getMsgSize());
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getReqFwdFees());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrPhaseBounceNoFunds loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TrPhaseBounceNoFunds(StorageUsedShort.Companion.loadTlb(cellSlice), Coins.Companion.loadTlb(cellSlice));
    }
}
