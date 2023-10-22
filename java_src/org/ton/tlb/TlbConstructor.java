package org.ton.tlb;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TlbConstructor.kt */
/* loaded from: classes6.dex */
public abstract class TlbConstructor<T> extends AbstractTlbConstructor<T> implements TlbCodec<T>, TlbConstructorProvider<T> {
    @Override // org.ton.tlb.providers.TlbConstructorProvider
    public TlbConstructor<T> tlbConstructor() {
        return this;
    }

    public /* synthetic */ TlbConstructor(String str, BitString bitString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : bitString);
    }

    @Override // org.ton.tlb.TlbLoader
    public T loadTlb(Cell cell) {
        return (T) TlbCodec.DefaultImpls.loadTlb(this, cell);
    }

    public T loadTlb(CellSlice cellSlice) {
        return (T) TlbConstructorProvider.DefaultImpls.loadTlb(this, cellSlice);
    }

    public void storeTlb(CellBuilder cellBuilder, T t) {
        TlbConstructorProvider.DefaultImpls.storeTlb(this, cellBuilder, t);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TlbConstructor(String schema, BitString bitString) {
        super(schema, bitString);
        Intrinsics.checkNotNullParameter(schema, "schema");
    }
}
