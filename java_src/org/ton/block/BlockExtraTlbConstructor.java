package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.CurrencyCollection;
import org.ton.block.OutMsg;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlockExtra.kt */
/* loaded from: classes6.dex */
public final class BlockExtraTlbConstructor extends org.ton.tlb.TlbConstructor<BlockExtra> {
    public static final BlockExtraTlbConstructor INSTANCE = new BlockExtraTlbConstructor();
    private static final TlbCodec<CellRef<HashmapAugE<InMsg, ImportFees>>> inMsgDescr;
    private static final TlbCodec<Maybe<CellRef<McBlockExtra>>> maybeMcBlockExtra;
    private static final TlbCodec<CellRef<HashmapAugE<OutMsg, CurrencyCollection>>> outMsgDescr;
    private static final TlbCodec<CellRef<HashmapAugE<AccountBlock, CurrencyCollection>>> shardAccountBlock;

    private BlockExtraTlbConstructor() {
        super("block_extra#4a33f6fd in_msg_descr:^InMsgDescr\n  out_msg_descr:^OutMsgDescr\n  account_blocks:^ShardAccountBlocks\n  rand_seed:bits256\n  created_by:bits256\n  custom:(Maybe ^McBlockExtra) = BlockExtra;", null, 2, null);
    }

    static {
        CellRef.Companion companion = CellRef.Companion;
        HashmapAugE.Companion companion2 = HashmapAugE.Companion;
        inMsgDescr = companion.tlbCodec(companion2.tlbCodec(256, InMsg.Companion, ImportFees.Companion));
        OutMsg.Companion companion3 = OutMsg.Companion;
        CurrencyCollection.Companion companion4 = CurrencyCollection.Companion;
        outMsgDescr = companion.tlbCodec(companion2.tlbCodec(256, companion3, companion4));
        shardAccountBlock = companion.tlbCodec(companion2.tlbCodec(256, AccountBlock.Companion, companion4));
        maybeMcBlockExtra = Maybe.Companion.tlbCodec(companion.tlbCodec(McBlockExtra.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, BlockExtra value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        inMsgDescr.storeTlb(cellBuilder, value.getInMsgDescr());
        outMsgDescr.storeTlb(cellBuilder, value.getOutMsgDescr());
        shardAccountBlock.storeTlb(cellBuilder, value.getAccountBlocks());
        cellBuilder.storeBits(value.getRandSeed());
        cellBuilder.storeBits(value.getCreatedBy());
        maybeMcBlockExtra.storeTlb(cellBuilder, value.getCustom());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public BlockExtra loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new BlockExtra(inMsgDescr.loadTlb(cellSlice), outMsgDescr.loadTlb(cellSlice), shardAccountBlock.loadTlb(cellSlice), cellSlice.loadBits(256), cellSlice.loadBits(256), maybeMcBlockExtra.loadTlb(cellSlice));
    }
}
