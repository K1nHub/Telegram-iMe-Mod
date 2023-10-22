package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: TransStorage.kt */
/* loaded from: classes6.dex */
final class TransStorageTlbConstructor extends org.ton.tlb.TlbConstructor<TransStorage> {
    public static final TransStorageTlbConstructor INSTANCE = new TransStorageTlbConstructor();

    private TransStorageTlbConstructor() {
        super("trans_storage$0001 storage_ph:TrStoragePhase = TransactionDescr;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, TransStorage value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        TrStoragePhase.Companion.storeTlb(cellBuilder, (CellBuilder) value.getStoragePh());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public TransStorage loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new TransStorage(TrStoragePhase.Companion.loadTlb(cellSlice));
    }
}
