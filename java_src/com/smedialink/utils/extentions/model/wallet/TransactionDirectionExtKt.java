package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.domain.model.wallet.transaction.TransactionDirection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: TransactionDirectionExt.kt */
/* loaded from: classes3.dex */
public final class TransactionDirectionExtKt {

    /* compiled from: TransactionDirectionExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionDirection.values().length];
            iArr[TransactionDirection.OUT.ordinal()] = 1;
            iArr[TransactionDirection.SELF.ordinal()] = 2;
            iArr[TransactionDirection.f366IN.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final int icon(TransactionDirection transactionDirection) {
        Intrinsics.checkNotNullParameter(transactionDirection, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[transactionDirection.ordinal()];
        if (i == 1 || i == 2) {
            return C3158R.C3160drawable.fork_ic_transaction_sent;
        }
        if (i == 3) {
            return C3158R.C3160drawable.fork_ic_transaction_receive;
        }
        throw new NoWhenBranchMatchedException();
    }
}
