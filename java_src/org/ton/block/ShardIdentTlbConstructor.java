package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardIdent.kt */
/* loaded from: classes6.dex */
public final class ShardIdentTlbConstructor extends org.ton.tlb.TlbConstructor<ShardIdent> {
    public static final ShardIdentTlbConstructor INSTANCE = new ShardIdentTlbConstructor();

    private ShardIdentTlbConstructor() {
        super("shard_ident$00 shard_pfx_bits:(#<= 60) workchain_id:int32 shard_prefix:uint64 = ShardIdent;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardIdent value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUIntLeq(value.getShardPfxBits(), 60);
        cellBuilder.storeInt(value.getWorkchainId(), 32);
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.m5178getShardPrefixsVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardIdent loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ShardIdent(cellSlice.loadUIntLeq(60).intValue(), cellSlice.loadInt(32).intValue(), cellSlice.mo5203loadUInt64sVKNKU(), null);
    }
}
