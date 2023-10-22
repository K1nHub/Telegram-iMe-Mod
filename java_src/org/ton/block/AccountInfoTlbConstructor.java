package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountInfo.kt */
/* loaded from: classes6.dex */
public final class AccountInfoTlbConstructor extends org.ton.tlb.TlbConstructor<AccountInfo> {
    public static final AccountInfoTlbConstructor INSTANCE = new AccountInfoTlbConstructor();

    private AccountInfoTlbConstructor() {
        super("account$1 addr:MsgAddressInt storage_stat:StorageInfo storage:AccountStorage = Account;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountInfo value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        MsgAddressInt.Companion.storeTlb(cellBuilder, (CellBuilder) value.addr());
        StorageInfo.Companion.storeTlb(cellBuilder, (CellBuilder) value.storageStat());
        AccountStorage.Companion.storeTlb(cellBuilder, (CellBuilder) value.storage());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccountInfo loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new AccountInfo(MsgAddressInt.Companion.loadTlb(cellSlice), StorageInfo.Companion.loadTlb(cellSlice), AccountStorage.Companion.loadTlb(cellSlice));
    }
}
