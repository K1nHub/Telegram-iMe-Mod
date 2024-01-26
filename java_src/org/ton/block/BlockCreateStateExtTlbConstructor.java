package org.ton.block;

import kotlin.UInt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.UIntTlbConstructorKt;
/* compiled from: BlockCreateStatsExt.kt */
/* loaded from: classes6.dex */
final class BlockCreateStateExtTlbConstructor extends org.ton.tlb.TlbConstructor<BlockCreateStatsExt> {
    public static final BlockCreateStateExtTlbConstructor INSTANCE = new BlockCreateStateExtTlbConstructor();
    private static final TlbCodec<HashmapAugE<CreatorStats, UInt>> counters = HashmapAugE.Companion.tlbCodec(256, CreatorStats.Companion, UIntTlbConstructorKt.tlbConstructor(UInt.Companion));

    private BlockCreateStateExtTlbConstructor() {
        super("block_create_stats_ext#34 counters:(HashmapAugE 256 CreatorStats uint32) = BlockCreateStats;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, BlockCreateStatsExt value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        counters.storeTlb(cellBuilder, value.getCounters());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public BlockCreateStatsExt loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new BlockCreateStatsExt(counters.loadTlb(cellSlice));
    }
}
