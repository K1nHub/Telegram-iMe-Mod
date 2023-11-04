package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Account.kt */
/* loaded from: classes6.dex */
public final class AccountTlbCombinator extends TlbCombinator<Account> {
    public static final AccountTlbCombinator INSTANCE = new AccountTlbCombinator();

    private AccountTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(Account.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(AccountNone.class), AccountNone.INSTANCE), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(AccountInfo.class), AccountInfo.Companion));
    }
}
