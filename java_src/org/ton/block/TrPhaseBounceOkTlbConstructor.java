package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Coins;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TrPhaseBounceOk.kt */
/* loaded from: classes6.dex */
final class TrPhaseBounceOkTlbConstructor extends org.ton.tlb.TlbConstructor<TrPhaseBounceOk> {
    public static final TrPhaseBounceOkTlbConstructor INSTANCE = new TrPhaseBounceOkTlbConstructor();

    private TrPhaseBounceOkTlbConstructor() {
        super("tr_phase_bounce_ok$1 msg_size:StorageUsedShort msg_fees:Coins fwd_fees:Coins = TrBouncePhase;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrPhaseBounceOk value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        StorageUsedShort.Companion.storeTlb(cellBuilder, (CellBuilder) value.getMsgSize());
        Coins.Companion companion = Coins.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getMsgFees());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getFwdFees());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrPhaseBounceOk loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        Coins.Companion companion = Coins.Companion;
        return new TrPhaseBounceOk(StorageUsedShort.Companion.loadTlb(cellSlice), companion.loadTlb(cellSlice), companion.loadTlb(cellSlice));
    }
}
