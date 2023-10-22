package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: IntermediateAddressRegular.kt */
/* loaded from: classes6.dex */
final class IntermediateAddressRegularTlbConstructor extends org.ton.tlb.TlbConstructor<IntermediateAddressRegular> {
    public static final IntermediateAddressRegularTlbConstructor INSTANCE = new IntermediateAddressRegularTlbConstructor();

    private IntermediateAddressRegularTlbConstructor() {
        super("interm_addr_regular$0 use_dest_bits:(#<= 96) = IntermediateAddress;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, IntermediateAddressRegular value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUIntLeq(value.getUseDestBits(), 96);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public IntermediateAddressRegular loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new IntermediateAddressRegular(cellSlice.loadUIntLeq(96).intValue());
    }
}
