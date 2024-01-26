package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.CurrencyCollection;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ValueFlow.kt */
/* loaded from: classes6.dex */
public final class ValueFlowTlbConstructor extends org.ton.tlb.TlbConstructor<ValueFlow> {
    public static final ValueFlowTlbConstructor INSTANCE = new ValueFlowTlbConstructor();

    private ValueFlowTlbConstructor() {
        super("value_flow#b8e48dfb ^[ from_prev_blk:CurrencyCollection to_next_blk:CurrencyCollection imported:CurrencyCollection exported:CurrencyCollection ] fees_collected:CurrencyCollection ^[ fees_imported:CurrencyCollection recovered:CurrencyCollection created:CurrencyCollection minted:CurrencyCollection ] = ValueFlow;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ValueFlow loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        CellSlice beginParse = cellSlice.loadRef().beginParse();
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        CurrencyCollection[] currencyCollectionArr = {companion.loadTlb(beginParse), companion.loadTlb(beginParse), companion.loadTlb(beginParse), companion.loadTlb(beginParse)};
        CurrencyCollection currencyCollection = currencyCollectionArr[0];
        CurrencyCollection currencyCollection2 = currencyCollectionArr[1];
        CurrencyCollection currencyCollection3 = currencyCollectionArr[2];
        CurrencyCollection currencyCollection4 = currencyCollectionArr[3];
        CurrencyCollection loadTlb = companion.loadTlb(cellSlice);
        CellSlice beginParse2 = cellSlice.loadRef().beginParse();
        CurrencyCollection[] currencyCollectionArr2 = {companion.loadTlb(beginParse2), companion.loadTlb(beginParse2), companion.loadTlb(beginParse2), companion.loadTlb(beginParse2)};
        return new ValueFlow(currencyCollection, currencyCollection2, currencyCollection3, currencyCollection4, loadTlb, currencyCollectionArr2[0], currencyCollectionArr2[1], currencyCollectionArr2[2], currencyCollectionArr2[3]);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ValueFlow value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        CellBuilder.Companion companion = CellBuilder.Companion;
        CellBuilder beginCell = companion.beginCell();
        CurrencyCollection.Companion companion2 = CurrencyCollection.Companion;
        companion2.storeTlb(beginCell, (CellBuilder) value.getFromPrevBlk());
        companion2.storeTlb(beginCell, (CellBuilder) value.getToNextBlk());
        companion2.storeTlb(beginCell, (CellBuilder) value.getImported());
        companion2.storeTlb(beginCell, (CellBuilder) value.getExported());
        cellBuilder.storeRef(beginCell.endCell());
        companion2.storeTlb(cellBuilder, (CellBuilder) value.getFeesCollected());
        CellBuilder beginCell2 = companion.beginCell();
        companion2.storeTlb(beginCell2, (CellBuilder) value.getFeesImported());
        companion2.storeTlb(beginCell2, (CellBuilder) value.getRecovered());
        companion2.storeTlb(beginCell2, (CellBuilder) value.getCreated());
        companion2.storeTlb(beginCell2, (CellBuilder) value.getMinted());
        cellBuilder.storeRef(beginCell2.endCell());
    }
}
