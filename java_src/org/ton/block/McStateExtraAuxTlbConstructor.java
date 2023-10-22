package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.BlockCreateStats;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: McStateExtra.kt */
/* loaded from: classes6.dex */
public final class McStateExtraAuxTlbConstructor extends org.ton.tlb.TlbConstructor<McStateExtraAux> {
    public static final McStateExtraAuxTlbConstructor INSTANCE = new McStateExtraAuxTlbConstructor();
    private static final TlbCodec<Maybe<ExtBlkRef>> maybeExtBlkRef = Maybe.Companion.tlbCodec(ExtBlkRef.Companion);

    private McStateExtraAuxTlbConstructor() {
        super("[$_ flags:(## 16) {<= flags 1} validator_info:ValidatorInfo prev_blocks:OldMcBlocksInfo after_key_block:Bool last_key_block:(Maybe ExtBlkRef) block_create_stats:flags.0?BlockCreateStats ]", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public McStateExtraAux loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        int intValue = cellSlice.loadUInt(16).intValue();
        return new McStateExtraAux(intValue, ValidatorInfo.Companion.loadTlb(cellSlice), OldMcBlocksInfo.Companion.loadTlb(cellSlice).m4984unboximpl(), cellSlice.loadBit(), maybeExtBlkRef.loadTlb(cellSlice), (intValue & 1) != 0 ? BlockCreateStats.Companion.loadTlb(cellSlice) : null, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, McStateExtraAux value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUInt(value.getFlags(), 16);
        ValidatorInfo.Companion.storeTlb(cellBuilder, (CellBuilder) value.getValidatorInfo());
        OldMcBlocksInfo.Companion.storeTlb(cellBuilder, OldMcBlocksInfo.m4977boximpl(value.m4969getPrevBlocksD6f0ERk()));
        cellBuilder.storeBit(value.getAfterKeyBlock());
        maybeExtBlkRef.storeTlb(cellBuilder, value.getLastKeyBlock());
        if ((value.getFlags() & 1) != 0) {
            BlockCreateStats.Companion companion = BlockCreateStats.Companion;
            BlockCreateStats blockCreateStats = value.getBlockCreateStats();
            Intrinsics.checkNotNull(blockCreateStats);
            companion.storeTlb(cellBuilder, (CellBuilder) blockCreateStats);
        }
    }
}
