package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: KeyExtBlkRef.kt */
/* loaded from: classes6.dex */
final class KeyExtBlkRefTlbConstructor extends org.ton.tlb.TlbConstructor<KeyExtBlkRef> {
    public static final KeyExtBlkRefTlbConstructor INSTANCE = new KeyExtBlkRefTlbConstructor();

    private KeyExtBlkRefTlbConstructor() {
        super("_ key:Bool blk_ref:ExtBlkRef = KeyExtBlkRef;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, KeyExtBlkRef value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getKey());
        ExtBlkRef.Companion.storeTlb(cellBuilder, (CellBuilder) value.getBlkRef());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public KeyExtBlkRef loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new KeyExtBlkRef(cellSlice.loadBit(), ExtBlkRef.Companion.loadTlb(cellSlice));
    }
}
