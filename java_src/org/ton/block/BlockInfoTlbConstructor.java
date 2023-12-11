package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlockInfo.kt */
/* loaded from: classes6.dex */
public final class BlockInfoTlbConstructor extends org.ton.tlb.TlbConstructor<BlockInfo> {
    public static final BlockInfoTlbConstructor INSTANCE = new BlockInfoTlbConstructor();
    private static final TlbCodec<CellRef<BlkMasterInfo>> blkMasterInfo;
    private static final TlbCodec<CellRef<BlkPrevInfo>> blkPrevInfoVert;

    private BlockInfoTlbConstructor() {
        super("block_info#9bc7a987 version:uint32 not_master:(## 1) after_merge:(## 1) before_split:(## 1) after_split:(## 1) want_split:Bool want_merge:Bool key_block:Bool vert_seqno_incr:(## 1) flags:(## 8) { flags <= 1 } seq_no:# vert_seq_no:# { vert_seq_no >= vert_seqno_incr } { prev_seq_no:# } { ~prev_seq_no + 1 = seq_no } shard:ShardIdent gen_utime:uint32 start_lt:uint64 end_lt:uint64 gen_validator_list_hash_short:uint32 gen_catchain_seqno:uint32 min_ref_mc_seqno:uint32 prev_key_block_seqno:uint32 gen_software:flags . 0?GlobalVersion master_ref:not_master?^BlkMasterInfo prev_ref:^(BlkPrevInfo after_merge) prev_vert_ref:vert_seqno_incr?^(BlkPrevInfo 0) = BlockInfo;", null, 2, null);
    }

    static {
        CellRef.Companion companion = CellRef.Companion;
        blkMasterInfo = companion.tlbCodec(BlkMasterInfo.Companion);
        blkPrevInfoVert = companion.tlbCodec(BlkPrevInfo.Companion.tlbCodec(0));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, BlockInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5076getVersionpVg5ArA());
        cellBuilder.storeBit(value.getNotMaster());
        cellBuilder.storeBit(value.getAfterMerge());
        cellBuilder.storeBit(value.getBeforeSplit());
        cellBuilder.storeBit(value.getAfterSplit());
        cellBuilder.storeBit(value.getWantSplit());
        cellBuilder.storeBit(value.getWantMerge());
        cellBuilder.storeBit(value.getKeyBlock());
        cellBuilder.storeBit(value.getVertSeqnoIncr());
        cellBuilder.storeInt(value.getFlags(), 8);
        cellBuilder.storeInt(value.getSeqNo(), 32);
        cellBuilder.storeInt(value.getVertSeqNo(), 32);
        ShardIdent.Companion.storeTlb(cellBuilder, (CellBuilder) value.getShard());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5071getGenUtimepVg5ArA());
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.m5075getStartLtsVKNKU());
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.m5069getEndLtsVKNKU());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5072getGenValidatorListHashShortpVg5ArA());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5070getGenCatchainSeqnopVg5ArA());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5073getMinRefMcSeqnopVg5ArA());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5074getPrevKeyBlockSeqnopVg5ArA());
        if ((value.getFlags() & 1) != 0 && value.getGenSoftware() != null) {
            GlobalVersion.Companion.storeTlb(cellBuilder, (CellBuilder) value.getGenSoftware());
        }
        if (value.getNotMaster() && value.getMasterRef() != null) {
            blkMasterInfo.storeTlb(cellBuilder, value.getMasterRef());
        }
        CellRef.Companion.tlbCodec(BlkPrevInfo.Companion.tlbCodec(value.getAfterMerge())).storeTlb(cellBuilder, value.getPrevRef());
        if (!value.getVertSeqnoIncr() || value.getPrevVertRef() == null) {
            return;
        }
        blkPrevInfoVert.storeTlb(cellBuilder, value.getPrevVertRef());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public BlockInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int mo5202loadUInt32pVg5ArA = cellSlice.mo5202loadUInt32pVg5ArA();
        boolean loadBit = cellSlice.loadBit();
        boolean loadBit2 = cellSlice.loadBit();
        boolean loadBit3 = cellSlice.loadBit();
        boolean loadBit4 = cellSlice.loadBit();
        boolean loadBit5 = cellSlice.loadBit();
        boolean loadBit6 = cellSlice.loadBit();
        boolean loadBit7 = cellSlice.loadBit();
        boolean loadBit8 = cellSlice.loadBit();
        int intValue = cellSlice.loadInt(8).intValue();
        return new BlockInfo(mo5202loadUInt32pVg5ArA, loadBit, loadBit2, loadBit3, loadBit4, loadBit5, loadBit6, loadBit7, loadBit8, intValue, cellSlice.mo5202loadUInt32pVg5ArA(), cellSlice.mo5202loadUInt32pVg5ArA(), ShardIdent.Companion.loadTlb(cellSlice), cellSlice.mo5202loadUInt32pVg5ArA(), cellSlice.mo5203loadUInt64sVKNKU(), cellSlice.mo5203loadUInt64sVKNKU(), cellSlice.mo5202loadUInt32pVg5ArA(), cellSlice.mo5202loadUInt32pVg5ArA(), cellSlice.mo5202loadUInt32pVg5ArA(), cellSlice.mo5202loadUInt32pVg5ArA(), (intValue & 1) != 0 ? GlobalVersion.Companion.loadTlb(cellSlice) : null, loadBit ? blkMasterInfo.loadTlb(cellSlice) : null, (CellRef) CellRef.Companion.tlbCodec(BlkPrevInfo.Companion.tlbCodec(loadBit2)).loadTlb(cellSlice), loadBit8 ? blkPrevInfoVert.loadTlb(cellSlice) : null, null);
    }
}
