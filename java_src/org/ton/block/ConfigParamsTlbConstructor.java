package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HmEdge;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.CellTlbConstructorKt;
/* compiled from: ConfigParams.kt */
/* loaded from: classes6.dex */
final class ConfigParamsTlbConstructor extends org.ton.tlb.TlbConstructor<ConfigParams> {
    public static final ConfigParamsTlbConstructor INSTANCE = new ConfigParamsTlbConstructor();
    private static final TlbCodec<HmEdge<Cell>> hashmap = HmEdge.Companion.tlbCodec(32, CellTlbConstructorKt.tlbCodec(Cell.Companion));

    private ConfigParamsTlbConstructor() {
        super("_ config_addr:bits256 config:^(Hashmap 32 ^Cell) = ConfigParams;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ConfigParams value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getConfigAddr());
        cellBuilder.storeRef(value.getConfig().toCell(hashmap));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ConfigParams loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        BitString loadBits = cellSlice.loadBits(256);
        TlbCodec<HmEdge<Cell>> tlbCodec = hashmap;
        return new ConfigParams(loadBits, CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) tlbCodec));
    }
}
