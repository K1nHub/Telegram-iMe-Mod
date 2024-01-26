package org.ton.tlb;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TlbConstructor.kt */
/* loaded from: classes6.dex */
public abstract class TlbNegatedConstructor<T> extends TlbConstructor<T> implements TlbNegatedCodec<T> {
    public /* synthetic */ TlbNegatedConstructor(String str, BitString bitString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : bitString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TlbNegatedConstructor(String schema, BitString bitString) {
        super(schema, bitString);
        Intrinsics.checkNotNullParameter(schema, "schema");
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, T value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        storeNegatedTlb(cellBuilder, value);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public T loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return loadNegatedTlb(cellSlice).getValue();
    }
}
