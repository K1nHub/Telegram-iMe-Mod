package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.block.ShardDescrAux;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardDescr.kt */
/* loaded from: classes6.dex */
public final class ShardDescrNewTlbConstructor extends org.ton.tlb.TlbConstructor<ShardDescrNew> {
    public static final ShardDescrNewTlbConstructor INSTANCE = new ShardDescrNewTlbConstructor();

    private ShardDescrNewTlbConstructor() {
        super("shard_descr_new#a seq_no:uint32 reg_mc_seqno:uint32\n  start_lt:uint64 end_lt:uint64\n  root_hash:bits256 file_hash:bits256 \n  before_split:Bool before_merge:Bool\n  want_split:Bool want_merge:Bool\n  nx_cc_updated:Bool flags:(## 3) { flags = 0 }\n  next_catchain_seqno:uint32 next_validator_shard:uint64\n  min_ref_mc_seqno:uint32 gen_utime:uint32\n  split_merge_at:FutureSplitMerge\n  fees_collected:CurrencyCollection\n  funds_created:CurrencyCollection = ShardDescr;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardDescrNew loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int mo5202loadUInt32pVg5ArA = cellSlice.mo5202loadUInt32pVg5ArA();
        int mo5202loadUInt32pVg5ArA2 = cellSlice.mo5202loadUInt32pVg5ArA();
        long mo5203loadUInt64sVKNKU = cellSlice.mo5203loadUInt64sVKNKU();
        long mo5203loadUInt64sVKNKU2 = cellSlice.mo5203loadUInt64sVKNKU();
        BitString loadBits = cellSlice.loadBits(256);
        BitString loadBits2 = cellSlice.loadBits(256);
        boolean loadBit = cellSlice.loadBit();
        boolean loadBit2 = cellSlice.loadBit();
        boolean loadBit3 = cellSlice.loadBit();
        boolean loadBit4 = cellSlice.loadBit();
        boolean loadBit5 = cellSlice.loadBit();
        int intValue = cellSlice.loadInt(3).intValue();
        int mo5202loadUInt32pVg5ArA3 = cellSlice.mo5202loadUInt32pVg5ArA();
        long mo5203loadUInt64sVKNKU3 = cellSlice.mo5203loadUInt64sVKNKU();
        int mo5202loadUInt32pVg5ArA4 = cellSlice.mo5202loadUInt32pVg5ArA();
        int mo5202loadUInt32pVg5ArA5 = cellSlice.mo5202loadUInt32pVg5ArA();
        FutureSplitMerge loadTlb = FutureSplitMerge.Companion.loadTlb(cellSlice);
        ShardDescrAux.Companion companion = ShardDescrAux.Companion;
        return new ShardDescrNew(mo5202loadUInt32pVg5ArA, mo5202loadUInt32pVg5ArA2, mo5203loadUInt64sVKNKU, mo5203loadUInt64sVKNKU2, loadBits, loadBits2, loadBit, loadBit2, loadBit3, loadBit4, loadBit5, intValue, mo5202loadUInt32pVg5ArA3, mo5203loadUInt64sVKNKU3, mo5202loadUInt32pVg5ArA4, mo5202loadUInt32pVg5ArA5, loadTlb, CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardDescrNew value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5152getSeqNopVg5ArA());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5151getRegMcSeqnopVg5ArA());
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.m5153getStartLtsVKNKU());
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.m5146getEndLtsVKNKU());
        cellBuilder.storeBits(value.getRootHash());
        cellBuilder.storeBits(value.getFileHash());
        cellBuilder.storeBit(value.getBeforeSplit());
        cellBuilder.storeBit(value.getBeforeMerge());
        cellBuilder.storeBit(value.getWantSplit());
        cellBuilder.storeBit(value.getWantMerge());
        cellBuilder.storeBit(value.getNxCcUpdated());
        cellBuilder.storeInt(value.getFlags(), 3);
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5149getNextCatchainSeqnopVg5ArA());
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.m5150getNextValidatorShardsVKNKU());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5148getMinRefMcSeqnopVg5ArA());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.m5147getGenUtimepVg5ArA());
        FutureSplitMerge.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSplitMergeAt());
        cellBuilder.storeRef(value.getR1().toCell(ShardDescrAux.Companion));
    }
}
