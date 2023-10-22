package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TrPhaseComputeSkipped.kt */
/* loaded from: classes6.dex */
final class TrPhaseComputeSkippedTlbConstructor extends org.ton.tlb.TlbConstructor<TrPhaseComputeSkipped> {
    public static final TrPhaseComputeSkippedTlbConstructor INSTANCE = new TrPhaseComputeSkippedTlbConstructor();

    private TrPhaseComputeSkippedTlbConstructor() {
        super("tr_phase_compute_skipped$0 reason:ComputeSkipReason = TrComputePhase;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TrPhaseComputeSkipped value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        ComputeSkipReason.Companion.storeTlb(cellBuilder, (CellBuilder) value.getReason());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TrPhaseComputeSkipped loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TrPhaseComputeSkipped(ComputeSkipReason.Companion.loadTlb(cellSlice));
    }
}
