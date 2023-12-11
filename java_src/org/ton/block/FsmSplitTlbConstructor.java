package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.FutureSplitMerge;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FutureSplitMerge.kt */
/* loaded from: classes6.dex */
public final class FsmSplitTlbConstructor extends org.ton.tlb.TlbConstructor<FutureSplitMerge.FsmSplit> {
    public static final FsmSplitTlbConstructor INSTANCE = new FsmSplitTlbConstructor();

    private FsmSplitTlbConstructor() {
        super("fsm_split$10 split_utime:uint32 interval:uint32 = FutureSplitMerge;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, FutureSplitMerge.FsmSplit value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5095getSplitUtimepVg5ArA());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5094getIntervalpVg5ArA());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public FutureSplitMerge.FsmSplit loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new FutureSplitMerge.FsmSplit(cellSlice.mo5202loadUInt32pVg5ArA(), cellSlice.mo5202loadUInt32pVg5ArA(), null);
    }
}
