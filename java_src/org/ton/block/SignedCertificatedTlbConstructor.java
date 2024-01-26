package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SignedCertificate.kt */
/* loaded from: classes6.dex */
public final class SignedCertificatedTlbConstructor extends org.ton.tlb.TlbConstructor<SignedCertificate> {
    public static final SignedCertificatedTlbConstructor INSTANCE = new SignedCertificatedTlbConstructor();

    private SignedCertificatedTlbConstructor() {
        super("signed_certificate$_ certificate:Certificate certificate_signature:CryptoSignature\n  = SignedCertificate;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, SignedCertificate value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        Certificate.Companion.storeTlb(cellBuilder, (CellBuilder) value.getCertificate());
        CryptoSignature.Companion.storeTlb(cellBuilder, (CellBuilder) value.getCertificate_signature());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public SignedCertificate loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new SignedCertificate(Certificate.Companion.loadTlb(cellSlice), CryptoSignature.Companion.loadTlb(cellSlice));
    }
}
