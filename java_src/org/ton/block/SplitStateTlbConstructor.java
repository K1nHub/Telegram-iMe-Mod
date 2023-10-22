package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.ShardStateUnsplit;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: SplitState.kt */
/* loaded from: classes6.dex */
final class SplitStateTlbConstructor extends org.ton.tlb.TlbConstructor<SplitState> {
    public static final SplitStateTlbConstructor INSTANCE = new SplitStateTlbConstructor();

    private SplitStateTlbConstructor() {
        super("split_state#5f327da5 left:^ShardStateUnsplit right:^ShardStateUnsplit = ShardState;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public SplitState loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        CellSlice beginParse = cellSlice.loadRef().beginParse();
        ShardStateUnsplit.Companion companion = ShardStateUnsplit.Companion;
        return new SplitState(companion.loadTlb(beginParse), companion.loadTlb(cellSlice.loadRef().beginParse()));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, SplitState value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CellBuilder.Companion companion = CellBuilder.Companion;
        CellBuilder beginCell = companion.beginCell();
        ShardStateUnsplit.Companion companion2 = ShardStateUnsplit.Companion;
        companion2.storeTlb(beginCell, (CellBuilder) value.getLeft());
        cellBuilder.storeRef(beginCell.endCell());
        CellBuilder beginCell2 = companion.beginCell();
        companion2.storeTlb(beginCell2, (CellBuilder) value.getRight());
        cellBuilder.storeRef(beginCell2.endCell());
    }
}
