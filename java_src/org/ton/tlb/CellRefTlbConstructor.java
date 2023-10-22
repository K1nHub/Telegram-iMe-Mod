package org.ton.tlb;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CellRef.kt */
/* loaded from: classes6.dex */
public final class CellRefTlbConstructor<T> implements TlbCodec<CellRef<? extends T>> {
    private final TlbCodec<T> codec;

    public CellRefTlbConstructor(TlbCodec<T> codec) {
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.codec = codec;
    }

    @Override // org.ton.tlb.TlbLoader
    public CellRef<T> loadTlb(Cell cell) {
        return (CellRef) TlbCodec.DefaultImpls.loadTlb(this, cell);
    }

    @Override // org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (CellRef) ((CellRef) obj));
    }

    public void storeTlb(CellBuilder cellBuilder, CellRef<? extends T> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.toCell(this.codec));
    }

    @Override // org.ton.tlb.TlbLoader
    public CellRef<T> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) this.codec);
    }
}
