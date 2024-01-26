package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.block.CurrencyCollection;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardDescr.kt */
/* loaded from: classes6.dex */
public final class ShardDescrOldTlbConstructor extends org.ton.tlb.TlbConstructor<ShardDescrOld> {
    public static final ShardDescrOldTlbConstructor INSTANCE = new ShardDescrOldTlbConstructor();

    private ShardDescrOldTlbConstructor() {
        super("shard_descr_old#b seq_no:uint32 reg_mc_seqno:uint32\n  start_lt:uint64 end_lt:uint64\n  root_hash:bits256 file_hash:bits256 \n  before_split:Bool before_merge:Bool\n  want_split:Bool want_merge:Bool\n  nx_cc_updated:Bool flags:(## 3) { flags = 0 }\n  next_catchain_seqno:uint32 next_validator_shard:uint64\n  min_ref_mc_seqno:uint32 gen_utime:uint32\n  split_merge_at:FutureSplitMerge\n  fees_collected:CurrencyCollection\n  funds_created:CurrencyCollection = ShardDescr;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardDescrOld loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int mo5387loadUInt32pVg5ArA = cellSlice.mo5387loadUInt32pVg5ArA();
        int mo5387loadUInt32pVg5ArA2 = cellSlice.mo5387loadUInt32pVg5ArA();
        long mo5388loadUInt64sVKNKU = cellSlice.mo5388loadUInt64sVKNKU();
        long mo5388loadUInt64sVKNKU2 = cellSlice.mo5388loadUInt64sVKNKU();
        BitString loadBits = cellSlice.loadBits(256);
        BitString loadBits2 = cellSlice.loadBits(256);
        boolean loadBit = cellSlice.loadBit();
        boolean loadBit2 = cellSlice.loadBit();
        boolean loadBit3 = cellSlice.loadBit();
        boolean loadBit4 = cellSlice.loadBit();
        boolean loadBit5 = cellSlice.loadBit();
        int intValue = cellSlice.loadInt(3).intValue();
        int mo5387loadUInt32pVg5ArA3 = cellSlice.mo5387loadUInt32pVg5ArA();
        long mo5388loadUInt64sVKNKU3 = cellSlice.mo5388loadUInt64sVKNKU();
        int mo5387loadUInt32pVg5ArA4 = cellSlice.mo5387loadUInt32pVg5ArA();
        int mo5387loadUInt32pVg5ArA5 = cellSlice.mo5387loadUInt32pVg5ArA();
        FutureSplitMerge loadTlb = FutureSplitMerge.Companion.loadTlb(cellSlice);
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        return new ShardDescrOld(mo5387loadUInt32pVg5ArA, mo5387loadUInt32pVg5ArA2, mo5388loadUInt64sVKNKU, mo5388loadUInt64sVKNKU2, loadBits, loadBits2, loadBit, loadBit2, loadBit3, loadBit4, loadBit5, intValue, mo5387loadUInt32pVg5ArA3, mo5388loadUInt64sVKNKU3, mo5387loadUInt32pVg5ArA4, mo5387loadUInt32pVg5ArA5, loadTlb, companion.loadTlb(cellSlice), companion.loadTlb(cellSlice), null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardDescrOld value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5345getSeqNopVg5ArA());
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5344getRegMcSeqnopVg5ArA());
        cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5346getStartLtsVKNKU());
        cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5339getEndLtsVKNKU());
        cellBuilder.storeBits(value.getRootHash());
        cellBuilder.storeBits(value.getFileHash());
        cellBuilder.storeBit(value.getBeforeSplit());
        cellBuilder.storeBit(value.getBeforeMerge());
        cellBuilder.storeBit(value.getWantSplit());
        cellBuilder.storeBit(value.getWantMerge());
        cellBuilder.storeBit(value.getNxCcUpdated());
        cellBuilder.storeInt(value.getFlags(), 3);
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5342getNextCatchainSeqnopVg5ArA());
        cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5343getNextValidatorShardsVKNKU());
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5341getMinRefMcSeqnopVg5ArA());
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5340getGenUtimepVg5ArA());
        FutureSplitMerge.Companion.storeTlb(cellBuilder, (CellBuilder) value.getSplitMergeAt());
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getFeesCollected());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getFundsCreated());
    }
}
