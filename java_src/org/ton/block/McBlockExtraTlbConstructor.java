package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.ShardFeeCreated;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.CellTlbConstructorKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: McBlockExtra.kt */
/* loaded from: classes6.dex */
public final class McBlockExtraTlbConstructor extends org.ton.tlb.TlbConstructor<McBlockExtra> {
    private static final TlbCodec<HashmapAugE<ShardFeeCreated, ShardFeeCreated>> shardFees;
    public static final McBlockExtraTlbConstructor INSTANCE = new McBlockExtraTlbConstructor();
    private static final TlbCodec<HashMapE<BinTree<ShardDescr>>> shardHashes = HashMapE.Companion.tlbCodec(32, CellTlbConstructorKt.tlbCodec(Cell.Companion, BinTree.Companion.tlbCodec(ShardDescr.Companion)));

    private McBlockExtraTlbConstructor() {
        super("masterchain_block_extra#cca5 key_block:(## 1) shard_hashes:ShardHashes shard_fees:ShardFees ^[ prev_blk_signatures:(HashmapE 16 CryptoSignaturePair)    recover_create_msg:(Maybe ^InMsg)    mint_msg:(Maybe ^InMsg) ] config:key_block?ConfigParams = McBlockExtra;", null, 2, null);
    }

    static {
        HashmapAugE.Companion companion = HashmapAugE.Companion;
        ShardFeeCreated.Companion companion2 = ShardFeeCreated.Companion;
        shardFees = companion.tlbCodec(96, companion2, companion2);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, McBlockExtra value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBit(value.getKeyBlock());
        shardHashes.storeTlb(cellBuilder, value.getShardHashes());
        shardFees.storeTlb(cellBuilder, value.getShardFees());
        cellBuilder.storeRef(value.getR1().toCell(McBlockExtraAux.Companion));
        if (!value.getKeyBlock() || value.getConfig() == null) {
            return;
        }
        ConfigParams.Companion.storeTlb(cellBuilder, (CellBuilder) value.getConfig());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public McBlockExtra loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        boolean loadBit = cellSlice.loadBit();
        return new McBlockExtra(loadBit, shardHashes.loadTlb(cellSlice), shardFees.loadTlb(cellSlice), CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) McBlockExtraAux.Companion), loadBit ? ConfigParams.Companion.loadTlb(cellSlice) : null);
    }
}
