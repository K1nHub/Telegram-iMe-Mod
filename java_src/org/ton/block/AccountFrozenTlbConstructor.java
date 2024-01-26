package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: AccountFrozen.kt */
/* loaded from: classes6.dex */
final class AccountFrozenTlbConstructor extends org.ton.tlb.TlbConstructor<AccountFrozen> {
    public static final AccountFrozenTlbConstructor INSTANCE = new AccountFrozenTlbConstructor();

    private AccountFrozenTlbConstructor() {
        super("account_frozen$01 state_hash:bits256 = AccountState;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountFrozen value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.stateHash());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccountFrozen loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new AccountFrozen(cellSlice.loadBits(256));
    }
}
