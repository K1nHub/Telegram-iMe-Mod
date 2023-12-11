package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountActive.kt */
/* loaded from: classes6.dex */
public final class AccountActiveTlbConstructor extends org.ton.tlb.TlbConstructor<AccountActive> {
    public static final AccountActiveTlbConstructor INSTANCE = new AccountActiveTlbConstructor();

    private AccountActiveTlbConstructor() {
        super("account_active$1 _:StateInit = AccountState;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
        return AccountActive.m5055boximpl(m5067loadTlbP1cIiig(cellSlice));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        m5068storeTlbwKbCAR4(cellBuilder, ((AccountActive) obj).m5061unboximpl());
    }

    /* renamed from: storeTlb-wKbCAR4  reason: not valid java name */
    public void m5068storeTlbwKbCAR4(CellBuilder cellBuilder, StateInit value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        StateInit.Companion.storeTlb(cellBuilder, (CellBuilder) value);
    }

    /* renamed from: loadTlb-P1cIiig  reason: not valid java name */
    public StateInit m5067loadTlbP1cIiig(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return AccountActive.m5056constructorimpl(StateInit.Companion.loadTlb(cellSlice));
    }
}
