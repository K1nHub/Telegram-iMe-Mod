package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntermediateAddressExt.kt */
/* loaded from: classes6.dex */
public final class IntermediateAddressExtTlbConstructor extends org.ton.tlb.TlbConstructor<IntermediateAddressExt> {
    public static final IntermediateAddressExtTlbConstructor INSTANCE = new IntermediateAddressExtTlbConstructor();

    private IntermediateAddressExtTlbConstructor() {
        super("interm_addr_ext$11 workchain_id:int32 addr_pfx:uint64 = IntermediateAddress;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, IntermediateAddressExt value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeInt(value.getWorkchainId(), 32);
        cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5284getAddrPfxsVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public IntermediateAddressExt loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new IntermediateAddressExt(cellSlice.loadInt(32).intValue(), cellSlice.mo5388loadUInt64sVKNKU(), null);
    }
}
