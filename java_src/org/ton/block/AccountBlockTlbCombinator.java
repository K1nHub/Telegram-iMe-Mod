package org.ton.block;

import kotlin.TuplesKt;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountBlock.kt */
/* loaded from: classes6.dex */
public final class AccountBlockTlbCombinator extends TlbCombinator<AccountBlock> {
    public static final AccountBlockTlbCombinator INSTANCE = new AccountBlockTlbCombinator();

    private AccountBlockTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(AccountBlock.class), TuplesKt.m144to(Reflection.getOrCreateKotlinClass(AccountBlock.class), AccountBlockTlbConstructor.INSTANCE));
    }
}
