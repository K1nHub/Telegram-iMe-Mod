package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.BlockInfo;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: Block.kt */
/* loaded from: classes6.dex */
final class TlbConstructor extends org.ton.tlb.TlbConstructor<Block> {
    public static final TlbConstructor INSTANCE = new TlbConstructor();
    private static final TlbCodec<MerkleUpdate<ShardState>> merkleUpdate = MerkleUpdate.Companion.tlbCodec(ShardState.Companion);

    private TlbConstructor() {
        super("block#11ef55aa global_id:int32 info:^BlockInfo value_flow:^ValueFlow state_update:^(MERKLE_UPDATE ShardState) extra:^BlockExtra = Block;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Block value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeInt(value.getGlobalId(), 32);
        cellBuilder.storeRef(value.getInfo().toCell(BlockInfo.Companion));
        cellBuilder.storeRef(value.getValueFlow().toCell(ValueFlow.Companion));
        cellBuilder.storeRef(value.getStateUpdate().toCell(merkleUpdate));
        cellBuilder.storeRef(value.getExtra().toCell(BlockExtra.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Block loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int intValue = cellSlice.loadInt(32).intValue();
        Cell loadRef = cellSlice.loadRef();
        BlockInfo.Companion companion = BlockInfo.Companion;
        CellRef.Companion companion2 = CellRef.Companion;
        return new Block(intValue, companion2.valueOf(loadRef, (TlbCodec) companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) ValueFlow.Companion), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) merkleUpdate), companion2.valueOf(cellSlice.loadRef(), (TlbCodec) BlockExtra.Companion));
    }
}
