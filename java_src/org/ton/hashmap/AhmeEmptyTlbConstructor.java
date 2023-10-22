package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAugE.kt */
/* loaded from: classes6.dex */
public final class AhmeEmptyTlbConstructor<X, Y> extends TlbConstructor<HashmapAugE.AhmeEmpty<X, Y>> {

    /* renamed from: n */
    private final int f2060n;

    /* renamed from: y */
    private final TlbCodec<Y> f2061y;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HashmapAugE.AhmeEmpty) ((HashmapAugE.AhmeEmpty) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AhmeEmptyTlbConstructor(int i, TlbCodec<Y> y) {
        super("ahme_empty$0 {n:#} {X:Type} {Y:Type} extra:Y = HashmapAugE n X Y", null, 2, null);
        Intrinsics.checkNotNullParameter(y, "y");
        this.f2060n = i;
        this.f2061y = y;
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HashmapAugE.AhmeEmpty<X, Y> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new AhmeEmptyImpl(this.f2060n, this.f2061y.loadTlb(cellSlice));
    }

    public void storeTlb(CellBuilder cellBuilder, HashmapAugE.AhmeEmpty<X, Y> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (!(value.getN() == this.f2060n)) {
            throw new IllegalArgumentException(("n mismatch, expected: " + this.f2060n + ", actual: " + value.getN()).toString());
        }
        this.f2061y.storeTlb(cellBuilder, value.getExtra());
    }
}
