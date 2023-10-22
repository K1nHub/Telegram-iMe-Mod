package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AddrVar.kt */
/* loaded from: classes6.dex */
public final class AddrVarTlbConstructor extends org.ton.tlb.TlbConstructor<AddrVar> {
    public static final AddrVarTlbConstructor INSTANCE = new AddrVarTlbConstructor();
    private static final TlbCodec<Maybe<Anycast>> MaybeAnycast = Maybe.Companion.tlbCodec(Anycast.Companion);

    private AddrVarTlbConstructor() {
        super("addr_var$11 anycast:(Maybe Anycast) addr_len:(## 9) workchain_id:int32 address:(bits addr_len) = MsgAddressInt;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AddrVar value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        MaybeAnycast.storeTlb(cellBuilder, value.getAnycast());
        cellBuilder.storeUInt(value.getAddrLen(), 9);
        cellBuilder.storeInt(value.getWorkchainId(), 32);
        cellBuilder.storeBits(value.getAddress());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AddrVar loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int intValue = cellSlice.loadUInt(9).intValue();
        return new AddrVar(MaybeAnycast.loadTlb(cellSlice), intValue, cellSlice.loadInt(32).intValue(), cellSlice.loadBits(intValue));
    }
}
