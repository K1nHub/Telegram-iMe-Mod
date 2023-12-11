package org.ton.block;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BinTreeFork.kt */
/* loaded from: classes6.dex */
public final class BinTreeForkTlbConstructor<X> extends org.ton.tlb.TlbConstructor<BinTreeFork<X>> {
    private final Lazy binTree$delegate;

    /* renamed from: x */
    private final TlbCodec<X> f2034x;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (BinTreeFork) ((BinTreeFork) obj));
    }

    public final TlbCodec<X> getX() {
        return this.f2034x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinTreeForkTlbConstructor(TlbCodec<X> x) {
        super("bt_fork$1 {X:Type} left:^(BinTree X) right:^(BinTree X) = BinTree X;", null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(x, "x");
        this.f2034x = x;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<TlbCombinator<BinTree<X>>>(this) { // from class: org.ton.block.BinTreeForkTlbConstructor$binTree$2
            final /* synthetic */ BinTreeForkTlbConstructor<X> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final TlbCombinator<BinTree<X>> invoke() {
                return BinTree.Companion.tlbCodec(this.this$0.getX());
            }
        });
        this.binTree$delegate = lazy;
    }

    public final TlbCombinator<BinTree<X>> getBinTree() {
        return (TlbCombinator) this.binTree$delegate.getValue();
    }

    public void storeTlb(CellBuilder cellBuilder, BinTreeFork<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getLeft().toCell(getBinTree()));
        cellBuilder.storeRef(value.getRight().toCell(getBinTree()));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public BinTreeFork<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCombinator<BinTree<X>> binTree = getBinTree();
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion = CellRef.Companion;
        return new BinTreeFork<>(companion.valueOf(loadRef, (TlbCodec) binTree), companion.valueOf(cellSlice.loadRef(), (TlbCodec) getBinTree()));
    }
}
