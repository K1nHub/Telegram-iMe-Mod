package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* compiled from: HashmapAugNode.kt */
/* loaded from: classes6.dex */
final class AhmnLeafTlbConstructor<X, Y> extends TlbConstructor<HashmapAugNode.AhmnLeaf<X, Y>> {

    /* renamed from: x */
    private final TlbCodec<X> f2081x;

    /* renamed from: y */
    private final TlbCodec<Y> f2082y;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HashmapAugNode.AhmnLeaf) ((HashmapAugNode.AhmnLeaf) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AhmnLeafTlbConstructor(TlbCodec<X> x, TlbCodec<Y> y) {
        super("ahmn_leaf#_ {X:Type} {Y:Type} extra:Y value:X = HashmapAugNode 0 X Y", null, 2, null);
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        this.f2081x = x;
        this.f2082y = y;
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HashmapAugNode.AhmnLeaf<X, Y> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new AhmnLeafImpl(this.f2082y.loadTlb(cellSlice), this.f2081x.loadTlb(cellSlice));
    }

    public void storeTlb(CellBuilder cellBuilder, HashmapAugNode.AhmnLeaf<X, Y> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f2082y.storeTlb(cellBuilder, value.getExtra());
        this.f2081x.storeTlb(cellBuilder, value.getValue());
    }
}
