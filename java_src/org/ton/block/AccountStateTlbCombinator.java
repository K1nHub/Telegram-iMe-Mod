package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountState.kt */
/* loaded from: classes6.dex */
public final class AccountStateTlbCombinator extends TlbCombinator<AccountState> {
    public static final AccountStateTlbCombinator INSTANCE = new AccountStateTlbCombinator();

    private AccountStateTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(AccountState.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AccountUninit.class), AccountUninit.INSTANCE), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AccountActive.class), AccountActive.Companion), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AccountFrozen.class), AccountFrozen.Companion));
    }
}
