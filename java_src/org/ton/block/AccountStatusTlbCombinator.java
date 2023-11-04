package org.ton.block;

import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
/* compiled from: AccountStatus.kt */
/* loaded from: classes6.dex */
final class AccountStatusTlbCombinator extends TlbCombinator<AccountStatus> {
    public static final AccountStatusTlbCombinator INSTANCE = new AccountStatusTlbCombinator();

    /* compiled from: AccountStatus.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccountStatus.values().length];
            try {
                iArr[AccountStatus.UNINIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccountStatus.FROZEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccountStatus.ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AccountStatus.NONEXIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AccountStatusTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(AccountStatus.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(AccountStatus.class), AccountStatusUninitTlbConstructor.INSTANCE), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(AccountStatus.class), AccountStatusFrozenTlbConstructor.INSTANCE), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(AccountStatus.class), AccountStatusActiveTlbConstructor.INSTANCE), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(AccountStatus.class), AccountStatusNonExistTlbConstructor.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.ton.tlb.TlbCombinator
    public org.ton.tlb.TlbConstructor<AccountStatus> findTlbStorerOrNull(AccountStatus value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int i = WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return AccountStatusNonExistTlbConstructor.INSTANCE;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return AccountStatusActiveTlbConstructor.INSTANCE;
            }
            return AccountStatusFrozenTlbConstructor.INSTANCE;
        }
        return AccountStatusUninitTlbConstructor.INSTANCE;
    }
}
