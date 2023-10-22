package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: AddrExtern.kt */
/* loaded from: classes6.dex */
final class AddrExternTlbConstructor extends org.ton.tlb.TlbConstructor<AddrExtern> {
    public static final AddrExternTlbConstructor INSTANCE = new AddrExternTlbConstructor();

    private AddrExternTlbConstructor() {
        super("addr_extern$01 len:(## 9) external_address:(bits len) = MsgAddressExt;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AddrExtern value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUInt(value.getLen(), 9);
        cellBuilder.storeBits(value.externalAddress());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AddrExtern loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int intValue = cellSlice.loadUInt(9).intValue();
        return new AddrExtern(intValue, cellSlice.loadBits(intValue));
    }
}
