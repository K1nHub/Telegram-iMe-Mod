package com.iMe.utils.extentions.model.wallet;

import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
/* compiled from: TransactionDirectionExt.kt */
/* loaded from: classes6.dex */
public final class TransactionDirectionExtKt {

    /* compiled from: TransactionDirectionExt.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionDirection.values().length];
            try {
                iArr[TransactionDirection.OUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionDirection.SELF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionDirection.f459IN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final int icon(TransactionDirection transactionDirection) {
        Intrinsics.checkNotNullParameter(transactionDirection, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[transactionDirection.ordinal()];
        if (i == 1 || i == 2) {
            return C3473R.C3475drawable.fork_ic_transaction_sent;
        }
        if (i == 3) {
            return C3473R.C3475drawable.fork_ic_transaction_receive;
        }
        throw new NoWhenBranchMatchedException();
    }
}
