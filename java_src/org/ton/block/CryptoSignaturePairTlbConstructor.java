package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: CryptoSignaturePair.kt */
/* loaded from: classes6.dex */
final class CryptoSignaturePairTlbConstructor extends org.ton.tlb.TlbConstructor<CryptoSignaturePair> {
    public static final CryptoSignaturePairTlbConstructor INSTANCE = new CryptoSignaturePairTlbConstructor();

    private CryptoSignaturePairTlbConstructor() {
        super("sig_pair$_ node_id_short:bits256 sign:CryptoSignature = CryptoSignaturePair;  // 256+x ~ 772 bits\n", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, CryptoSignaturePair value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getNode_id_short());
        CryptoSignature.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSign());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public CryptoSignaturePair loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new CryptoSignaturePair(cellSlice.loadBits(256), CryptoSignature.Companion.loadTlb(cellSlice));
    }
}
