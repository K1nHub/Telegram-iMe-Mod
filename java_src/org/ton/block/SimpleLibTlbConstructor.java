package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: SimpleLib.kt */
/* loaded from: classes6.dex */
final class SimpleLibTlbConstructor extends org.ton.tlb.TlbConstructor<SimpleLib> {
    public static final SimpleLibTlbConstructor INSTANCE = new SimpleLibTlbConstructor();

    private SimpleLibTlbConstructor() {
        super("simple_lib$_ public:Bool root:^Cell = SimpleLib;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, SimpleLib value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getPublic());
        cellBuilder.storeRef(value.getRoot());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public SimpleLib loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new SimpleLib(cellSlice.loadBit(), cellSlice.loadRef());
    }
}
