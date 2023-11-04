package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
import org.ton.tlb.TlbNegatedCodec;
import org.ton.tlb.TlbNegatedResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HmEdge.kt */
/* loaded from: classes6.dex */
public final class HashMapEdgeTlbConstructor<X> extends TlbConstructor<HmEdge<X>> {
    private final TlbNegatedCodec<HmLabel> hashMapLabelCodec;

    /* renamed from: n */
    private final int f2082n;

    /* renamed from: x */
    private final TlbCodec<X> f2083x;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HmEdge) ((HmEdge) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashMapEdgeTlbConstructor(int i, TlbCodec<X> x) {
        super("hm_edge#_ {n:#} {X:Type} {l:#} {m:#} label:(HmLabel ~l n) {n = (~m) + l} node:(HashmapNode m X) = Hashmap n X;", BitString.Companion.empty());
        Intrinsics.checkNotNullParameter(x, "x");
        this.f2082n = i;
        this.f2083x = x;
        this.hashMapLabelCodec = HmLabel.Companion.tlbCodec(i);
    }

    public void storeTlb(CellBuilder cellBuilder, HmEdge<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        HashMapNode.Companion.tlbCodec(this.f2082n - this.hashMapLabelCodec.storeNegatedTlb(cellBuilder, value.getLabel()), this.f2083x).storeTlb(cellBuilder, value.getNode());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HmEdge<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbNegatedResult<HmLabel> loadNegatedTlb = this.hashMapLabelCodec.loadNegatedTlb(cellSlice);
        return new HmEdge<>(loadNegatedTlb.component2(), HashMapNode.Companion.tlbCodec(this.f2082n - loadNegatedTlb.component1(), this.f2083x).loadTlb(cellSlice));
    }
}
