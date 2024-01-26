package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* compiled from: StorageUsedShort.kt */
/* loaded from: classes6.dex */
final class StorageUsedShortTlbConstructor extends org.ton.tlb.TlbConstructor<StorageUsedShort> {
    public static final StorageUsedShortTlbConstructor INSTANCE = new StorageUsedShortTlbConstructor();
    private static final TlbCodec<VarUInteger> varUInteger7Codec = VarUInteger.Companion.tlbCodec(7);

    private StorageUsedShortTlbConstructor() {
        super("storage_used_short$_ cells:(VarUInteger 7) bits:(VarUInteger 7) = StorageUsedShort;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, StorageUsedShort value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        TlbCodec<VarUInteger> tlbCodec = varUInteger7Codec;
        tlbCodec.storeTlb(cellBuilder, value.getCells());
        tlbCodec.storeTlb(cellBuilder, value.getBits());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public StorageUsedShort loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCodec<VarUInteger> tlbCodec = varUInteger7Codec;
        return new StorageUsedShort(tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice));
    }
}
