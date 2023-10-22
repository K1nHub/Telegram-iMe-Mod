package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* compiled from: StorageUsed.kt */
/* loaded from: classes6.dex */
final class StorageUsedTlbConstructor extends org.ton.tlb.TlbConstructor<StorageUsed> {
    public static final StorageUsedTlbConstructor INSTANCE = new StorageUsedTlbConstructor();
    private static final TlbCodec<VarUInteger> varUInteger7 = VarUInteger.Companion.tlbCodec(7);

    private StorageUsedTlbConstructor() {
        super("storage_used$_ cells:(VarUInteger 7) bits:(VarUInteger 7) public_cells:(VarUInteger 7) = StorageUsed;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, StorageUsed value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        TlbCodec<VarUInteger> tlbCodec = varUInteger7;
        tlbCodec.storeTlb(cellBuilder, value.getCells());
        tlbCodec.storeTlb(cellBuilder, value.getBits());
        tlbCodec.storeTlb(cellBuilder, value.getPublicCells());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public StorageUsed loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCodec<VarUInteger> tlbCodec = varUInteger7;
        return new StorageUsed(tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice));
    }
}
