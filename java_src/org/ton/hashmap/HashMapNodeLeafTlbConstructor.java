package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HmnLeaf.kt */
/* loaded from: classes6.dex */
public final class HashMapNodeLeafTlbConstructor<X> extends TlbConstructor<HmnLeaf<X>> {

    /* renamed from: x */
    private final TlbCodec<X> f2088x;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HmnLeaf) ((HmnLeaf) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashMapNodeLeafTlbConstructor(TlbCodec<X> x) {
        super("hmn_leaf#_ {X:Type} value:X = HashmapNode 0 X;", BitString.Companion.empty());
        Intrinsics.checkNotNullParameter(x, "x");
        this.f2088x = x;
    }

    public void storeTlb(CellBuilder cellBuilder, HmnLeaf<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f2088x.storeTlb(cellBuilder, value.getValue());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HmnLeaf<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new HmnLeaf<>(this.f2088x.loadTlb(cellSlice));
    }
}
