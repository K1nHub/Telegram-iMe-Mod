package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Certificate.kt */
/* loaded from: classes6.dex */
public final class CertificateTlbConstructor extends org.ton.tlb.TlbConstructor<Certificate> {
    public static final CertificateTlbConstructor INSTANCE = new CertificateTlbConstructor();

    private CertificateTlbConstructor() {
        super("certificate#4 temp_key:SigPubKey valid_since:uint32 valid_until:uint32 = Certificate;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Certificate value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        SigPubKey.Companion.storeTlb(cellBuilder, (CellBuilder) value.getTemp_key());
        cellBuilder.mo5056storeUInt32WZ4Q5Ns(value.m4941getValid_sincepVg5ArA());
        cellBuilder.mo5056storeUInt32WZ4Q5Ns(value.m4942getValid_untilpVg5ArA());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Certificate loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new Certificate(SigPubKey.Companion.loadTlb(cellSlice), cellSlice.mo5066loadUInt32pVg5ArA(), cellSlice.mo5066loadUInt32pVg5ArA(), null);
    }
}
