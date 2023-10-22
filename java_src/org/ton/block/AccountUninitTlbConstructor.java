package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: AccountUninit.kt */
/* loaded from: classes6.dex */
final class AccountUninitTlbConstructor extends org.ton.tlb.TlbConstructor<AccountUninit> {
    public static final AccountUninitTlbConstructor INSTANCE = new AccountUninitTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountUninit value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private AccountUninitTlbConstructor() {
        super("account_uninit$00 = AccountState;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccountUninit loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return AccountUninit.INSTANCE;
    }
}
