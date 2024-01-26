package org.ton.tlb.constructor;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* compiled from: CellTlbConstructor.kt */
/* loaded from: classes6.dex */
final class CellReferencedTlbConstructor<T> extends TlbConstructor<T> {
    private final TlbCodec<T> codec;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellReferencedTlbConstructor(TlbCodec<T> codec) {
        super("", BitString.Companion.empty());
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.codec = codec;
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public T loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return this.codec.loadTlb(cellSlice.loadRef().beginParse());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, T value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CellBuilder beginCell = CellBuilder.Companion.beginCell();
        this.codec.storeTlb(beginCell, value);
        cellBuilder.storeRef(beginCell.endCell());
    }
}
