package org.ton.tlb.constructor;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* compiled from: AnyTlbConstructor.kt */
/* loaded from: classes6.dex */
public final class AnyTlbConstructor implements TlbCodec<Cell> {
    public static final AnyTlbConstructor INSTANCE = new AnyTlbConstructor();

    private AnyTlbConstructor() {
    }

    @Override // org.ton.tlb.TlbLoader
    public Cell loadTlb(Cell cell) {
        return (Cell) TlbCodec.DefaultImpls.loadTlb(this, cell);
    }

    @Override // org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Cell value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getBits());
        cellBuilder.storeRefs(value.getRefs());
    }

    @Override // org.ton.tlb.TlbLoader
    public Cell loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        CellBuilder beginCell = CellBuilder.Companion.beginCell();
        beginCell.storeBits(cellSlice.loadBits(cellSlice.getBits().getSize() - cellSlice.getBitsPosition()));
        beginCell.storeRefs(cellSlice.loadRefs(cellSlice.getRefs().size() - cellSlice.getRefsPosition()));
        return beginCell.endCell();
    }
}
