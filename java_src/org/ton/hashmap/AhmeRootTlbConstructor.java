package org.ton.hashmap;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashmapAugE.kt */
/* loaded from: classes6.dex */
public final class AhmeRootTlbConstructor<X, Y> extends TlbConstructor<HashmapAugE.AhmeRoot<X, Y>> {
    private final TlbCodec<HashmapAug<X, Y>> hashmapAug;

    /* renamed from: n */
    private final int f2075n;

    /* renamed from: y */
    private final TlbCodec<Y> f2076y;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HashmapAugE.AhmeRoot) ((HashmapAugE.AhmeRoot) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AhmeRootTlbConstructor(int i, TlbCodec<X> x, TlbCodec<Y> y) {
        super("ahme_root$1 {n:#} {X:Type} {Y:Type} root:^(HashmapAug n X Y) extra:Y = HashmapAugE n X Y", null, 2, null);
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        this.f2075n = i;
        this.f2076y = y;
        this.hashmapAug = HashmapAug.Companion.tlbCodec(i, x, y);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HashmapAugE.AhmeRoot<X, Y> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCodec<HashmapAug<X, Y>> tlbCodec = this.hashmapAug;
        return new AhmeRootImpl(this.f2075n, CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) tlbCodec), this.f2076y.loadTlb(cellSlice));
    }

    public void storeTlb(CellBuilder cellBuilder, HashmapAugE.AhmeRoot<X, Y> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.getN() == this.f2075n) {
            cellBuilder.storeRef(value.getRoot().toCell(this.hashmapAug));
            this.f2076y.storeTlb(cellBuilder, value.getExtra());
            return;
        }
        throw new IllegalArgumentException(("n mismatch, expected: " + this.f2075n + ", actual: " + value.getN()).toString());
    }
}
