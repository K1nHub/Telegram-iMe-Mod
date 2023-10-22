package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: SplitMergeInfo.kt */
/* loaded from: classes6.dex */
final class SplitMergeInfoTlbConstructor extends org.ton.tlb.TlbConstructor<SplitMergeInfo> {
    public static final SplitMergeInfoTlbConstructor INSTANCE = new SplitMergeInfoTlbConstructor();

    private SplitMergeInfoTlbConstructor() {
        super("split_merge_info$_ cur_shard_pfx_len:(## 6)\n  acc_split_depth:(## 6) this_addr:bits256 sibling_addr:bits256\n  = SplitMergeInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, SplitMergeInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUInt(value.getCurShardPfxLen(), 6);
        cellBuilder.storeUInt(value.getAccSplitDepth(), 6);
        cellBuilder.storeBits(value.getThisAddr());
        cellBuilder.storeBits(value.getSiblingAddr());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public SplitMergeInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new SplitMergeInfo(cellSlice.loadUInt(6).intValue(), cellSlice.loadUInt(6).intValue(), cellSlice.loadBits(256), cellSlice.loadBits(256));
    }
}
