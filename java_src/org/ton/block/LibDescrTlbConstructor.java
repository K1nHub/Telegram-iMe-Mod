package org.ton.block;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HmEdge;
import org.ton.tlb.TlbCodec;
/* compiled from: LibDescr.kt */
/* loaded from: classes6.dex */
final class LibDescrTlbConstructor extends org.ton.tlb.TlbConstructor<LibDescr> {
    public static final LibDescrTlbConstructor INSTANCE = new LibDescrTlbConstructor();
    private static final Lazy publishers$delegate;

    private LibDescrTlbConstructor() {
        super("shared_lib_descr$00 lib:^Cell publishers:(Hashmap 256 True) = LibDescr;", null, 2, null);
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TlbCodec<HmEdge<Unit>>>() { // from class: org.ton.block.LibDescrTlbConstructor$publishers$2
            @Override // kotlin.jvm.functions.Function0
            public final TlbCodec<HmEdge<Unit>> invoke() {
                return HmEdge.Companion.tlbCodec(256, new TlbCodec<Unit>() { // from class: org.ton.block.LibDescrTlbConstructor$publishers$2.1
                    /* renamed from: loadTlb  reason: collision with other method in class */
                    public void m5103loadTlb(CellSlice cellSlice) {
                        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
                    }

                    @Override // org.ton.tlb.TlbStorer
                    public void storeTlb(CellBuilder cellBuilder, Unit value) {
                        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
                        Intrinsics.checkNotNullParameter(value, "value");
                    }

                    @Override // org.ton.tlb.TlbLoader
                    public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
                        m5102loadTlb(cell);
                        return Unit.INSTANCE;
                    }

                    @Override // org.ton.tlb.TlbLoader
                    public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
                        m5103loadTlb(cellSlice);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: loadTlb  reason: collision with other method in class */
                    public void m5102loadTlb(Cell cell) {
                        TlbCodec.DefaultImpls.loadTlb(this, cell);
                    }
                });
            }
        });
        publishers$delegate = lazy;
    }

    public final TlbCodec<HmEdge<Unit>> getPublishers() {
        return (TlbCodec) publishers$delegate.getValue();
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, LibDescr value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getLib());
        INSTANCE.getPublishers().storeTlb(cellBuilder, value.getPublishers());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public LibDescr loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new LibDescr(cellSlice.loadRef(), INSTANCE.getPublishers().loadTlb(cellSlice));
    }
}
