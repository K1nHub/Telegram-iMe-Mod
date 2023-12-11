package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.FutureSplitMerge;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FutureSplitMerge.kt */
/* loaded from: classes6.dex */
public final class FutureSplitMergeMergeTlbConstructor extends org.ton.tlb.TlbConstructor<FutureSplitMerge.FsmMerge> {
    public static final FutureSplitMergeMergeTlbConstructor INSTANCE = new FutureSplitMergeMergeTlbConstructor();

    private FutureSplitMergeMergeTlbConstructor() {
        super("fsm_merge$11 merge_utime:uint32 interval:uint32 = FutureSplitMerge;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, FutureSplitMerge.FsmMerge value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5093getMergeUtimepVg5ArA());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5092getIntervalpVg5ArA());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public FutureSplitMerge.FsmMerge loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new FutureSplitMerge.FsmMerge(cellSlice.mo5202loadUInt32pVg5ArA(), cellSlice.mo5202loadUInt32pVg5ArA(), null);
    }
}
