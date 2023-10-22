package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: CryptoSignatureSimple.kt */
/* loaded from: classes6.dex */
final class CryptoSignatureSimpleTlbConstructor extends org.ton.tlb.TlbConstructor<CryptoSignatureSimple> {
    public static final CryptoSignatureSimpleTlbConstructor INSTANCE = new CryptoSignatureSimpleTlbConstructor();

    private CryptoSignatureSimpleTlbConstructor() {
        super("ed25519_signature#5 R:bits256 s:bits256 = CryptoSignatureSimple;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, CryptoSignatureSimple value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getR());
        cellBuilder.storeBits(value.getS());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public CryptoSignatureSimple loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new CryptoSignatureSimple(cellSlice.loadBits(256), cellSlice.loadBits(256));
    }
}
