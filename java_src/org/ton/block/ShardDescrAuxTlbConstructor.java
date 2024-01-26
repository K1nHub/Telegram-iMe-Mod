package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.CurrencyCollection;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: ShardDescr.kt */
/* loaded from: classes6.dex */
final class ShardDescrAuxTlbConstructor extends org.ton.tlb.TlbConstructor<ShardDescrAux> {
    public static final ShardDescrAuxTlbConstructor INSTANCE = new ShardDescrAuxTlbConstructor();

    private ShardDescrAuxTlbConstructor() {
        super("", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardDescrAux loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        return new ShardDescrAux(companion.loadTlb(cellSlice), companion.loadTlb(cellSlice));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardDescrAux value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getFeesCollected());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getFundsCreated());
    }
}
