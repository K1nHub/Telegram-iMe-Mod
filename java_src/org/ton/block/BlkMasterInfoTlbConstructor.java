package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: BlkMasterInfo.kt */
/* loaded from: classes6.dex */
final class BlkMasterInfoTlbConstructor extends org.ton.tlb.TlbConstructor<BlkMasterInfo> {
    public static final BlkMasterInfoTlbConstructor INSTANCE = new BlkMasterInfoTlbConstructor();

    private BlkMasterInfoTlbConstructor() {
        super("master_info$_ master:ExtBlkRef = BlkMasterInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, BlkMasterInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        ExtBlkRef.Companion.storeTlb(cellBuilder, (CellBuilder) value.getMaster());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public BlkMasterInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new BlkMasterInfo(ExtBlkRef.Companion.loadTlb(cellSlice));
    }
}
