package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TickTock.kt */
/* loaded from: classes6.dex */
final class TickTockTlbConstructor extends org.ton.tlb.TlbConstructor<TickTock> {
    public static final TickTockTlbConstructor INSTANCE = new TickTockTlbConstructor();

    private TickTockTlbConstructor() {
        super("tick_tock$_ tick:Bool tock:Bool = TickTock;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TickTock value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getTick());
        cellBuilder.storeBit(value.getTock());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TickTock loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TickTock(cellSlice.loadBit(), cellSlice.loadBit());
    }
}
