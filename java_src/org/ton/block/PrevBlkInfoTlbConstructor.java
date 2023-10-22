package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: PrevBlkInfo.kt */
/* loaded from: classes6.dex */
final class PrevBlkInfoTlbConstructor extends org.ton.tlb.TlbConstructor<PrevBlkInfo> {
    public static final PrevBlkInfoTlbConstructor INSTANCE = new PrevBlkInfoTlbConstructor();

    private PrevBlkInfoTlbConstructor() {
        super("prev_blk_info$_ prev:ExtBlkRef = BlkPrevInfo 0;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, PrevBlkInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        ExtBlkRef.Companion.storeTlb(cellBuilder, (CellBuilder) value.getPrev());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public PrevBlkInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new PrevBlkInfo(ExtBlkRef.Companion.loadTlb(cellSlice));
    }
}
