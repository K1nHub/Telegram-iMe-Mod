package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.TlbCodec;
/* compiled from: BlockCreateStatsRegular.kt */
/* loaded from: classes6.dex */
final class BlockCreateStatsRegularTlbConstructor extends org.ton.tlb.TlbConstructor<BlockCreateStatsRegular> {
    public static final BlockCreateStatsRegularTlbConstructor INSTANCE = new BlockCreateStatsRegularTlbConstructor();
    private static final TlbCodec<HashMapE<CreatorStats>> hashmapE = HashMapE.Companion.tlbCodec(256, CreatorStats.Companion);

    private BlockCreateStatsRegularTlbConstructor() {
        super("block_create_stats#17 counters:(HashmapE 256 CreatorStats) = BlockCreateStats;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, BlockCreateStatsRegular value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        hashmapE.storeTlb(cellBuilder, value.getCounters());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public BlockCreateStatsRegular loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new BlockCreateStatsRegular(hashmapE.loadTlb(cellSlice));
    }
}
