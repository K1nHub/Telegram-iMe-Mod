package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: AccountNone.kt */
/* loaded from: classes6.dex */
final class AccountNoneTlbConstructor extends org.ton.tlb.TlbConstructor<AccountNone> {
    public static final AccountNoneTlbConstructor INSTANCE = new AccountNoneTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountNone value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private AccountNoneTlbConstructor() {
        super("account_none$0 = Account;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccountNone loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return AccountNone.INSTANCE;
    }
}
