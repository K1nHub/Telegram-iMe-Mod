package org.ton.tlb.constructor;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbConstructor;
/* compiled from: CellTlbConstructor.kt */
/* loaded from: classes6.dex */
final class CellTlbConstructor extends TlbConstructor<Cell> {
    public static final CellTlbConstructor INSTANCE = new CellTlbConstructor();

    private CellTlbConstructor() {
        super("_ _:Cell = Cell;", BitString.Companion.empty());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Cell value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Cell loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return cellSlice.loadRef();
    }
}
