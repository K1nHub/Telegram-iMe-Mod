package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChainedSignature.kt */
/* loaded from: classes6.dex */
public final class ChainedSignatureTLbConstructor extends org.ton.tlb.TlbConstructor<ChainedSignature> {
    public static final ChainedSignatureTLbConstructor INSTANCE = new ChainedSignatureTLbConstructor();

    private ChainedSignatureTLbConstructor() {
        super("chained_signature#f signed_cert:^SignedCertificate temp_key_signature:CryptoSignatureSimple = CryptoSignature;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ChainedSignature loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ChainedSignature(SignedCertificate.Companion.loadTlb(cellSlice.loadRef().beginParse()), CryptoSignatureSimple.Companion.loadTlb(cellSlice));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ChainedSignature value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CellBuilder beginCell = CellBuilder.Companion.beginCell();
        SignedCertificate.Companion.storeTlb(beginCell, (CellBuilder) value.getSigned_crt());
        cellBuilder.storeRef(beginCell.endCell());
        CryptoSignatureSimple.Companion.storeTlb(cellBuilder, (CellBuilder) value.getTemp_key_signature());
    }
}
