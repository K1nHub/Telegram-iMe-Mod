package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.McStateExtraAux;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: McStateExtra.kt */
/* loaded from: classes6.dex */
public final class McStateExtraTlbConstructor extends org.ton.tlb.TlbConstructor<McStateExtra> {
    public static final McStateExtraTlbConstructor INSTANCE = new McStateExtraTlbConstructor();

    private McStateExtraTlbConstructor() {
        super("masterchain_state_extra#cc26  shard_hashes:ShardHashes  config:ConfigParams  ^[ flags:(## 16) { flags <= 1 }     validator_info:ValidatorInfo     prev_blocks:OldMcBlocksInfo     after_key_block:Bool     last_key_block:(Maybe ExtBlkRef)     block_create_stats:(flags . 0)?BlockCreateStats ]  global_balance:CurrencyCollection= McStateExtra;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, McStateExtra value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        ShardHashes.Companion.storeTlb(cellBuilder, ShardHashes.m5162boximpl(value.m5104getShardHashes78z5ENA()));
        ConfigParams.Companion.storeTlb(cellBuilder, (CellBuilder) value.getConfig());
        cellBuilder.storeRef(value.getR1().toCell(McStateExtraAux.Companion));
        CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.getGlobalBalance());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public McStateExtra loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        HashMapE m5169unboximpl = ShardHashes.Companion.loadTlb(cellSlice).m5169unboximpl();
        ConfigParams loadTlb = ConfigParams.Companion.loadTlb(cellSlice);
        McStateExtraAux.Companion companion = McStateExtraAux.Companion;
        return new McStateExtra(m5169unboximpl, loadTlb, CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), CurrencyCollection.Companion.loadTlb(cellSlice), null);
    }
}
