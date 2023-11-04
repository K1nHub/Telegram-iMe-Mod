package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugNode;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* compiled from: HashmapAugNode.kt */
/* loaded from: classes6.dex */
final class AhmnForkTlbConstructor<X, Y> extends TlbConstructor<HashmapAugNode.AhmnFork<X, Y>> {
    private final TlbCodec<HashmapAug<X, Y>> hashmapAug;

    /* renamed from: n */
    private final int f2078n;

    /* renamed from: y */
    private final TlbCodec<Y> f2079y;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HashmapAugNode.AhmnFork) ((HashmapAugNode.AhmnFork) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AhmnForkTlbConstructor(TlbCodec<X> x, TlbCodec<Y> y, int i) {
        super("ahmn_fork#_ {n:#} {X:Type} {Y:Type} left:^(HashmapAug n X Y) right:^(HashmapAug n X Y) extra:Y = HashmapAugNode (n + 1) X Y", null, 2, null);
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        this.f2079y = y;
        this.f2078n = i;
        this.hashmapAug = HashmapAug.Companion.tlbCodec(i - 1, x, y);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HashmapAugNode.AhmnFork<X, Y> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCodec<HashmapAug<X, Y>> tlbCodec = this.hashmapAug;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion = CellRef.Companion;
        return new AhmnForkImpl(this.f2078n, companion.valueOf(loadRef, (TlbCodec) tlbCodec), companion.valueOf(cellSlice.loadRef(), (TlbCodec) this.hashmapAug), this.f2079y.loadTlb(cellSlice));
    }

    public void storeTlb(CellBuilder cellBuilder, HashmapAugNode.AhmnFork<X, Y> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.getN() == this.f2078n) {
            cellBuilder.storeRef(value.getLeft().toCell(this.hashmapAug));
            cellBuilder.storeRef(value.getRight().toCell(this.hashmapAug));
            this.f2079y.storeTlb(cellBuilder, value.getExtra());
            return;
        }
        throw new IllegalStateException(("n mismatch, expected: " + this.f2078n + ", actual: " + value.getN()).toString());
    }
}
