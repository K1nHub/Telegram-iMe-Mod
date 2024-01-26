package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ValidatorInfo.kt */
/* loaded from: classes6.dex */
public final class ValidatorInfoTlbConstructor extends org.ton.tlb.TlbConstructor<ValidatorInfo> {
    public static final ValidatorInfoTlbConstructor INSTANCE = new ValidatorInfoTlbConstructor();

    private ValidatorInfoTlbConstructor() {
        super("validator_info$_   validator_list_hash_short:uint32   catchain_seqno:uint32   nx_cc_updated:Bool = ValidatorInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ValidatorInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5372getValidatorListHashShortpVg5ArA());
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5371getCatchainSeqnopVg5ArA());
        cellBuilder.storeBit(value.getNxCcUpdated());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ValidatorInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ValidatorInfo(cellSlice.mo5387loadUInt32pVg5ArA(), cellSlice.mo5387loadUInt32pVg5ArA(), cellSlice.loadBit(), null);
    }
}
