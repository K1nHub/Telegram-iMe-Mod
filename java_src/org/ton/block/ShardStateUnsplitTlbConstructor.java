package org.ton.block;

import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import org.ton.block.OutMsgQueueInfo;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardStateUnsplit.kt */
/* loaded from: classes6.dex */
public final class ShardStateUnsplitTlbConstructor extends org.ton.tlb.TlbConstructor<ShardStateUnsplit> {
    public static final ShardStateUnsplitTlbConstructor INSTANCE = new ShardStateUnsplitTlbConstructor();
    private static final TlbCodec<Maybe<CellRef<McStateExtra>>> maybeMcExtra = Maybe.Companion.tlbCodec(CellRef.Companion.tlbCodec(McStateExtra.Companion));

    private ShardStateUnsplitTlbConstructor() {
        super("shard_state#9023afe2 global_id:int32 shard_id:ShardIdent seq_no:uint32 vert_seq_no:# gen_utime:uint32 gen_lt:uint64 min_ref_mc_seqno:uint32 out_msg_queue_info:^OutMsgQueueInfo before_split:(## 1) accounts:^ShardAccounts ^[ overload_history:uint64 underload_history:uint64 total_balance:CurrencyCollection total_validator_fees:CurrencyCollection libraries:(HashmapE 256 LibDescr) master_ref:(Maybe BlkMasterInfo) ] custom:(Maybe ^McStateExtra) = ShardStateUnsplit;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardStateUnsplit value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeInt(value.getGlobalId(), 32);
        ShardIdent.Companion.storeTlb(cellBuilder, (CellBuilder) value.getShardId());
        cellBuilder.storeUInt(value.m5046getSeqNopVg5ArA(), 32);
        cellBuilder.storeInt(value.getVertSeqNo(), 32);
        cellBuilder.storeUInt(value.m5044getGenUtimepVg5ArA(), 32);
        cellBuilder.storeUInt(value.m5043getGenLtsVKNKU(), 64);
        cellBuilder.storeUInt(value.m5045getMinRefMcSeqnopVg5ArA(), 32);
        cellBuilder.storeRef(value.getOutMsgQueueInfo().toCell(OutMsgQueueInfo.Companion));
        cellBuilder.storeBit(value.getBeforeSplit());
        cellBuilder.storeRef(value.getAccounts().toCell(ShardAccounts.Companion));
        cellBuilder.storeRef(value.getR1().toCell(ShardStateUnsplitAux.Companion));
        maybeMcExtra.storeTlb(cellBuilder, value.getCustom());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardStateUnsplit loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int intValue = cellSlice.loadInt(32).intValue();
        ShardIdent loadTlb = ShardIdent.Companion.loadTlb(cellSlice);
        int m1967constructorimpl = UInt.m1967constructorimpl(cellSlice.loadUInt(32).intValue());
        int intValue2 = cellSlice.loadInt(32).intValue();
        int m1967constructorimpl2 = UInt.m1967constructorimpl(cellSlice.loadUInt(32).intValue());
        long m1989constructorimpl = ULong.m1989constructorimpl(cellSlice.loadUInt(64).longValue());
        int m1967constructorimpl3 = UInt.m1967constructorimpl(cellSlice.loadUInt(32).intValue());
        OutMsgQueueInfo.Companion companion = OutMsgQueueInfo.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion2 = CellRef.Companion;
        return new ShardStateUnsplit(intValue, loadTlb, m1967constructorimpl, intValue2, m1967constructorimpl2, m1989constructorimpl, m1967constructorimpl3, companion2.valueOf(loadRef, (TlbCodec) companion), cellSlice.loadBit(), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) ShardAccounts.Companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) ShardStateUnsplitAux.Companion), maybeMcExtra.loadTlb(cellSlice), null);
    }
}
