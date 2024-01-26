package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAug;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
import org.ton.tlb.TlbNegatedResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAug.kt */
/* loaded from: classes6.dex */
public final class AhmEdgeTlbConstructor<X, Y> extends TlbConstructor<HashmapAug.AhmEdge<X, Y>> {

    /* renamed from: n */
    private final int f2086n;

    /* renamed from: x */
    private final TlbCodec<X> f2087x;

    /* renamed from: y */
    private final TlbCodec<Y> f2088y;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HashmapAug.AhmEdge) ((HashmapAug.AhmEdge) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AhmEdgeTlbConstructor(int i, TlbCodec<X> x, TlbCodec<Y> y) {
        super("ahm_edge#_ {n:#} {X:Type} {Y:Type} {l:#} {m:#} label:(HmLabel ~l n) {n = (~m) + l} node:(HashmapAugNode m X Y) = HashmapAug n X Y", null, 2, null);
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        this.f2086n = i;
        this.f2087x = x;
        this.f2088y = y;
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HashmapAug.AhmEdge<X, Y> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbNegatedResult<HmLabel> loadNegatedTlb = HmLabel.Companion.tlbCodec(this.f2086n).loadNegatedTlb(cellSlice);
        int component1 = this.f2086n - loadNegatedTlb.component1();
        return HashmapAug.Companion.edge(this.f2086n, loadNegatedTlb.component2(), HashmapAugNode.Companion.tlbCodec(this.f2087x, this.f2088y, component1).loadTlb(cellSlice));
    }

    public void storeTlb(CellBuilder cellBuilder, HashmapAug.AhmEdge<X, Y> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        int n = value.getN();
        int i = this.f2086n;
        if (n == i) {
            HashmapAugNode.Companion.tlbCodec(this.f2087x, this.f2088y, this.f2086n - HmLabel.Companion.tlbCodec(i).storeNegatedTlb(cellBuilder, value.getLabel())).storeTlb(cellBuilder, value.getNode());
            return;
        }
        throw new IllegalStateException(("Invalid n, expected: " + this.f2086n + ", actual: " + value.getN()).toString());
    }
}
