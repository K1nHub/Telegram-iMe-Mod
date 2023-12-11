package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountStorage.kt */
/* loaded from: classes6.dex */
public final class AccountStorageTlbConstructor extends org.ton.tlb.TlbConstructor<AccountStorage> {
    public static final AccountStorageTlbConstructor INSTANCE = new AccountStorageTlbConstructor();

    private AccountStorageTlbConstructor() {
        super("account_storage$_ last_trans_lt:uint64 balance:CurrencyCollection state:AccountState = AccountStorage;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountStorage value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.lastTransLt());
        CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.balance());
        AccountState.Companion.storeTlb(cellBuilder, (CellBuilder) value.state());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccountStorage loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new AccountStorage(cellSlice.mo5203loadUInt64sVKNKU(), CurrencyCollection.Companion.loadTlb(cellSlice), AccountState.Companion.loadTlb(cellSlice), null);
    }
}
