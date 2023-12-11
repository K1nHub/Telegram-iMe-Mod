package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardHashes.kt */
/* loaded from: classes6.dex */
public final class ShardHashesTlbCodec implements TlbCodec<ShardHashes> {
    public static final ShardHashesTlbCodec INSTANCE = new ShardHashesTlbCodec();
    private static final TlbCodec<HashMapE<CellRef<BinTree<ShardDescr>>>> codec = HashMapE.Companion.tlbCodec(32, CellRef.Companion.tlbCodec(BinTree.Companion.tlbCodec(ShardDescr.Companion)));

    private ShardHashesTlbCodec() {
    }

    @Override // org.ton.tlb.TlbLoader
    public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
        return ShardHashes.m5162boximpl(m5175loadTlbnCYawEE(cell));
    }

    @Override // org.ton.tlb.TlbLoader
    public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
        return ShardHashes.m5162boximpl(m5176loadTlbnCYawEE(cellSlice));
    }

    /* renamed from: loadTlb-nCYawEE  reason: not valid java name */
    public HashMapE<CellRef<? extends BinTree<ShardDescr>>> m5175loadTlbnCYawEE(Cell cell) {
        return ((ShardHashes) TlbCodec.DefaultImpls.loadTlb(this, cell)).m5169unboximpl();
    }

    @Override // org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        m5177storeTlbZFAh1YI(cellBuilder, ((ShardHashes) obj).m5169unboximpl());
    }

    /* renamed from: storeTlb-ZFAh1YI  reason: not valid java name */
    public void m5177storeTlbZFAh1YI(CellBuilder cellBuilder, HashMapE<CellRef<? extends BinTree<ShardDescr>>> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        codec.storeTlb(cellBuilder, value);
    }

    /* renamed from: loadTlb-nCYawEE  reason: not valid java name */
    public HashMapE<CellRef<? extends BinTree<ShardDescr>>> m5176loadTlbnCYawEE(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return ShardHashes.m5163constructorimpl(codec.loadTlb(cellSlice));
    }
}
