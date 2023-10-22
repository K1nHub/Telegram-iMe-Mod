package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: CurrencyCollection.kt */
/* loaded from: classes6.dex */
final class CurrencyCollectionTlbConstructor extends org.ton.tlb.TlbConstructor<CurrencyCollection> {
    public static final CurrencyCollectionTlbConstructor INSTANCE = new CurrencyCollectionTlbConstructor();

    private CurrencyCollectionTlbConstructor() {
        super("currencies$_ coins:Coins other:ExtraCurrencyCollection = CurrencyCollection;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, CurrencyCollection value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.coins());
        ExtraCurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.other());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public CurrencyCollection loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new CurrencyCollection(Coins.Companion.loadTlb(cellSlice), ExtraCurrencyCollection.Companion.loadTlb(cellSlice));
    }
}
