package org.ton.tlb;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellType;
import org.ton.tlb.CellRef;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CellRef.kt */
/* loaded from: classes6.dex */
public final class CellRefImpl<T> implements CellRef<T> {
    private final Cell cell;
    private final TlbCodec<T> codec;
    private final Lazy value$delegate;

    public CellRefImpl(Cell cell, TlbCodec<T> codec) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(cell, "cell");
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.cell = cell;
        this.codec = codec;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<T>(this) { // from class: org.ton.tlb.CellRefImpl$value$2
            final /* synthetic */ CellRefImpl<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                boolean z = this.this$0.getCell().getType() != CellType.PRUNED_BRANCH;
                CellRefImpl<T> cellRefImpl = this.this$0;
                if (!z) {
                    throw new IllegalStateException(("Can't load reference value: " + cellRefImpl.getCell()).toString());
                }
                return cellRefImpl.getCodec().loadTlb(this.this$0.getCell());
            }
        });
        this.value$delegate = lazy;
    }

    @Override // org.ton.tlb.CellRef
    public BitString hash() {
        return CellRef.DefaultImpls.hash(this);
    }

    @Override // org.ton.tlb.CellRef
    public BitString hash(TlbCodec<T> tlbCodec) {
        return CellRef.DefaultImpls.hash(this, tlbCodec);
    }

    public final Cell getCell() {
        return this.cell;
    }

    public final TlbCodec<T> getCodec() {
        return this.codec;
    }

    @Override // org.ton.tlb.CellRef
    public T getValue() {
        return (T) this.value$delegate.getValue();
    }

    @Override // org.ton.tlb.CellRef
    public Cell toCell(TlbCodec<T> tlbCodec) {
        return this.cell;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        if (this.cell.getType() != CellType.PRUNED_BRANCH) {
            return CellRef.DefaultImpls.print(this, printer);
        }
        TlbPrettyPrinter open = printer.open("!pruned_branch");
        open.field("cell", this.cell.getBits());
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }

    public String toString() {
        return "CellRef(" + this.cell + ')';
    }
}
