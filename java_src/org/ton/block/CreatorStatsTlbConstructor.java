package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.Counters;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: CreatorStats.kt */
/* loaded from: classes6.dex */
final class CreatorStatsTlbConstructor extends org.ton.tlb.TlbConstructor<CreatorStats> {
    public static final CreatorStatsTlbConstructor INSTANCE = new CreatorStatsTlbConstructor();

    private CreatorStatsTlbConstructor() {
        super("creator_info#4 mc_blocks:Counters shard_blocks:Counters = CreatorStats;\n", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, CreatorStats value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        Counters.Companion companion = Counters.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getMcBlocks());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getShardBlocks());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public CreatorStats loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        Counters.Companion companion = Counters.Companion;
        return new CreatorStats(companion.loadTlb(cellSlice), companion.loadTlb(cellSlice));
    }
}
