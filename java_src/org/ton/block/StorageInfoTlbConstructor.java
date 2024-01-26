package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StorageInfo.kt */
/* loaded from: classes6.dex */
public final class StorageInfoTlbConstructor extends org.ton.tlb.TlbConstructor<StorageInfo> {
    public static final StorageInfoTlbConstructor INSTANCE = new StorageInfoTlbConstructor();
    private static final TlbCodec<Maybe<Coins>> maybeCoins = Maybe.Companion.tlbCodec(Coins.Companion);

    private StorageInfoTlbConstructor() {
        super("storage_info$_ used:StorageUsed last_paid:uint32 due_payment:(Maybe Coins) = StorageInfo;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, StorageInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        StorageUsed.Companion.storeTlb(cellBuilder, (CellBuilder) value.used());
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.lastPaid());
        maybeCoins.storeTlb(cellBuilder, value.duePayment());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public StorageInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new StorageInfo(StorageUsed.Companion.loadTlb(cellSlice), cellSlice.mo5387loadUInt32pVg5ArA(), maybeCoins.loadTlb(cellSlice), null);
    }
}
