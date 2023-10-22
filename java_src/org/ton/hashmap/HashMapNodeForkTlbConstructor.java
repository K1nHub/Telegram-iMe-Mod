package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HmnFork.kt */
/* loaded from: classes6.dex */
public final class HashMapNodeForkTlbConstructor<X> extends TlbConstructor<HmnFork<X>> {
    private final TlbCodec<CellRef<HmEdge<X>>> hashmapConstructor;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HmnFork) ((HmnFork) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashMapNodeForkTlbConstructor(int i, TlbCodec<X> x) {
        super("hmn_fork#_ {n:#} {X:Type} left:^(Hashmap n X) right:^(Hashmap n X) = HashmapNode (n + 1) X;", BitString.Companion.empty());
        Intrinsics.checkNotNullParameter(x, "x");
        this.hashmapConstructor = CellRef.Companion.tlbCodec(HmEdge.Companion.tlbCodec(i - 1, x));
    }

    public void storeTlb(CellBuilder cellBuilder, HmnFork<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.hashmapConstructor.storeTlb(cellBuilder, value.getLeft());
        this.hashmapConstructor.storeTlb(cellBuilder, value.getRight());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HmnFork<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new HmnFork<>(this.hashmapConstructor.loadTlb(cellSlice), this.hashmapConstructor.loadTlb(cellSlice));
    }
}
