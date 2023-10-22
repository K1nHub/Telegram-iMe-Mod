package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: PrevBlksInfo.kt */
/* loaded from: classes6.dex */
final class PrevBlksInfoTlbConstructor extends org.ton.tlb.TlbConstructor<PrevBlksInfo> {
    public static final PrevBlksInfoTlbConstructor INSTANCE = new PrevBlksInfoTlbConstructor();
    private static final TlbCodec<CellRef<ExtBlkRef>> cellRef = CellRef.Companion.tlbCodec(ExtBlkRef.Companion);

    private PrevBlksInfoTlbConstructor() {
        super("prev_blks_info$_ prev1:^ExtBlkRef prev2:^ExtBlkRef = BlkPrevInfo 1;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, PrevBlksInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        TlbCodec<CellRef<ExtBlkRef>> tlbCodec = cellRef;
        tlbCodec.storeTlb(cellBuilder, value.getPrev1());
        tlbCodec.storeTlb(cellBuilder, value.getPrev2());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public PrevBlksInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCodec<CellRef<ExtBlkRef>> tlbCodec = cellRef;
        return new PrevBlksInfo(tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice));
    }
}
