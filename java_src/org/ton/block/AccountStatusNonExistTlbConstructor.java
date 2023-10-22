package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountStatus.kt */
/* loaded from: classes6.dex */
public final class AccountStatusNonExistTlbConstructor extends org.ton.tlb.TlbConstructor<AccountStatus> {
    public static final AccountStatusNonExistTlbConstructor INSTANCE = new AccountStatusNonExistTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountStatus value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private AccountStatusNonExistTlbConstructor() {
        super("acc_state_nonexist$11 = AccountStatus;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccountStatus loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return AccountStatus.NONEXIST;
    }
}
