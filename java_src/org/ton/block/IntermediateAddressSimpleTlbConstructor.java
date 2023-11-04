package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntermediateAddressSimple.kt */
/* loaded from: classes6.dex */
public final class IntermediateAddressSimpleTlbConstructor extends org.ton.tlb.TlbConstructor<IntermediateAddressSimple> {
    public static final IntermediateAddressSimpleTlbConstructor INSTANCE = new IntermediateAddressSimpleTlbConstructor();

    private IntermediateAddressSimpleTlbConstructor() {
        super("interm_addr_simple$10 workchain_id:int8 addr_pfx:uint64 = IntermediateAddress;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, IntermediateAddressSimple value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeInt(value.getWorkchainId(), 8);
        cellBuilder.mo5211storeUInt64VKZWuLQ(value.m5118getAddrPfxsVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public IntermediateAddressSimple loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new IntermediateAddressSimple(cellSlice.loadInt(8).intValue(), cellSlice.mo5221loadUInt64sVKNKU(), null);
    }
}
