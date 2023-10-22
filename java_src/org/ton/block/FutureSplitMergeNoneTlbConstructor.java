package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.FutureSplitMerge;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: FutureSplitMerge.kt */
/* loaded from: classes6.dex */
final class FutureSplitMergeNoneTlbConstructor extends org.ton.tlb.TlbConstructor<FutureSplitMerge.FsmNone> {
    public static final FutureSplitMergeNoneTlbConstructor INSTANCE = new FutureSplitMergeNoneTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, FutureSplitMerge.FsmNone value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private FutureSplitMergeNoneTlbConstructor() {
        super("fsm_none$0 = FutureSplitMerge;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public FutureSplitMerge.FsmNone loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return FutureSplitMerge.FsmNone.INSTANCE;
    }
}
