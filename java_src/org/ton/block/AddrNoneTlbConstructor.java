package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: AddrNone.kt */
/* loaded from: classes6.dex */
final class AddrNoneTlbConstructor extends org.ton.tlb.TlbConstructor<AddrNone> {
    public static final AddrNoneTlbConstructor INSTANCE = new AddrNoneTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AddrNone value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private AddrNoneTlbConstructor() {
        super("addr_none$00 = MsgAddressExt;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AddrNone loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return AddrNone.INSTANCE;
    }
}
