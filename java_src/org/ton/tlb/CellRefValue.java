package org.ton.tlb;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.tlb.CellRef;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CellRef.kt */
/* loaded from: classes6.dex */
public final class CellRefValue<T> implements CellRef<T> {
    private final TlbCodec<T> codec;
    private final T value;

    public CellRefValue(T t, TlbCodec<T> tlbCodec) {
        this.value = t;
        this.codec = tlbCodec;
    }

    @Override // org.ton.tlb.CellRef
    public BitString hash() {
        return CellRef.DefaultImpls.hash(this);
    }

    @Override // org.ton.tlb.CellRef
    public BitString hash(TlbCodec<T> tlbCodec) {
        return CellRef.DefaultImpls.hash(this, tlbCodec);
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter) {
        return CellRef.DefaultImpls.print(this, tlbPrettyPrinter);
    }

    @Override // org.ton.tlb.CellRef
    public T getValue() {
        return this.value;
    }

    @Override // org.ton.tlb.CellRef
    public Cell toCell(final TlbCodec<T> tlbCodec) {
        if (tlbCodec == null) {
            tlbCodec = this.codec;
        }
        if (!(tlbCodec != null)) {
            throw new IllegalArgumentException("Codec is not specified".toString());
        }
        return CellBuilder.Companion.createCell(new Function1<CellBuilder, Unit>() { // from class: org.ton.tlb.CellRefValue$toCell$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder) {
                invoke2(cellBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(CellBuilder createCell) {
                Intrinsics.checkNotNullParameter(createCell, "$this$createCell");
                tlbCodec.storeTlb(createCell, this.getValue());
            }
        });
    }

    public String toString() {
        return "CellRef(" + getValue() + ')';
    }
}
