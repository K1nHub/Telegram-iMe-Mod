package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Counters.kt */
/* loaded from: classes6.dex */
public final class CounterTlbConstructor extends org.ton.tlb.TlbConstructor<Counters> {
    public static final CounterTlbConstructor INSTANCE = new CounterTlbConstructor();

    private CounterTlbConstructor() {
        super("counters#_ last_updated:uint32 total:uint64 cnt2048:uint64 cnt65536:uint64 = Counters;\n", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Counters value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5210storeUInt32WZ4Q5Ns(value.m5103getLastUpdatedpVg5ArA());
        cellBuilder.mo5211storeUInt64VKZWuLQ(value.m5104getTotalsVKNKU());
        cellBuilder.mo5211storeUInt64VKZWuLQ(value.m5101getCnt2048sVKNKU());
        cellBuilder.mo5211storeUInt64VKZWuLQ(value.m5102getCnt65536sVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Counters loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new Counters(cellSlice.mo5220loadUInt32pVg5ArA(), cellSlice.mo5221loadUInt64sVKNKU(), cellSlice.mo5221loadUInt64sVKNKU(), cellSlice.mo5221loadUInt64sVKNKU(), null);
    }
}
