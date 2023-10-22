package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BinTreeLeaf.kt */
/* loaded from: classes6.dex */
public final class BinTreeTlbConstructor<X> extends org.ton.tlb.TlbConstructor<BinTreeLeaf<X>> {

    /* renamed from: x */
    private final TlbCodec<X> f2022x;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (BinTreeLeaf) ((BinTreeLeaf) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinTreeTlbConstructor(TlbCodec<X> x) {
        super("bt_leaf$0 {X:Type} leaf:X = BinTree X;", null, 2, null);
        Intrinsics.checkNotNullParameter(x, "x");
        this.f2022x = x;
    }

    public void storeTlb(CellBuilder cellBuilder, BinTreeLeaf<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f2022x.storeTlb(cellBuilder, value.getLeaf());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public BinTreeLeaf<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new BinTreeLeaf<>(this.f2022x.loadTlb(cellSlice));
    }
}
