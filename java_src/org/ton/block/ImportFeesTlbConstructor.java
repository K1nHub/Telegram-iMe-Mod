package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: ImportFees.kt */
/* loaded from: classes6.dex */
final class ImportFeesTlbConstructor extends org.ton.tlb.TlbConstructor<ImportFees> {
    public static final ImportFeesTlbConstructor INSTANCE = new ImportFeesTlbConstructor();

    private ImportFeesTlbConstructor() {
        super("import_fees$_ fees_collected:Coins value_imported:CurrencyCollection = ImportFees;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ImportFees value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getFeesCollected());
        CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.getValueImported());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ImportFees loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ImportFees(Coins.Companion.loadTlb(cellSlice), CurrencyCollection.Companion.loadTlb(cellSlice));
    }
}
