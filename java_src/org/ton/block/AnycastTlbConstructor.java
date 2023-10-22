package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: Anycast.kt */
/* loaded from: classes6.dex */
final class AnycastTlbConstructor extends org.ton.tlb.TlbConstructor<Anycast> {
    public static final AnycastTlbConstructor INSTANCE = new AnycastTlbConstructor();

    private AnycastTlbConstructor() {
        super("anycast_info$_ depth:(#<= 30) { depth >= 1 } rewrite_pfx:(bits depth) = Anycast;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Anycast value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUIntLeq(value.getDepth(), 30);
        cellBuilder.storeBits(value.getRewritePfx());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Anycast loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int intValue = cellSlice.loadUIntLeq(30).intValue();
        return new Anycast(intValue, cellSlice.loadBits(intValue));
    }
}
