package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AddrStd.kt */
/* loaded from: classes6.dex */
public final class AddrStdTlbConstructor extends org.ton.tlb.TlbConstructor<AddrStd> {
    public static final AddrStdTlbConstructor INSTANCE = new AddrStdTlbConstructor();
    private static final TlbCodec<Maybe<Anycast>> MaybeAnycast = Maybe.Companion.tlbCodec(Anycast.Companion);

    private AddrStdTlbConstructor() {
        super("addr_std$10 anycast:(Maybe Anycast) workchain_id:int8 address:bits256 = MsgAddressInt;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AddrStd value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        MaybeAnycast.storeTlb(cellBuilder, value.anycast());
        cellBuilder.storeInt(value.workchainId(), 8);
        cellBuilder.storeBits(value.address());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AddrStd loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new AddrStd(MaybeAnycast.loadTlb(cellSlice), cellSlice.loadInt(8).intValue(), cellSlice.loadBits(256));
    }
}
