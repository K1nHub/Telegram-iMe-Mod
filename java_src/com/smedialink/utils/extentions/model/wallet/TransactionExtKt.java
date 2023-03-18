package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.data.network.model.response.base.Status;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.model.wallet.transaction.TransactionDirection;
import com.smedialink.storage.domain.model.wallet.transaction.TransactionProcessingType;
import com.smedialink.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: TransactionExt.kt */
/* loaded from: classes3.dex */
public final class TransactionExtKt {

    /* compiled from: TransactionExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TransactionDirection.values().length];
            try {
                iArr[TransactionDirection.f370IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionDirection.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionDirection.SELF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TransactionProcessingType.values().length];
            try {
                iArr2[TransactionProcessingType.UNISWAP_V2.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TransactionProcessingType.UNISWAP_V3.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TransactionProcessingType.PANCAKESWAP_V2.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[TransactionProcessingType.ONEINCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[TransactionProcessingType.SYMBIOSIS.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final String getFormattedAmount(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "<this>");
        return BalanceFormatter.formatBalance(transaction.getAmount(), TokenInfo.Companion.map(transaction.getTokenCode()).getDecimals());
    }

    public static final int getIcon(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "<this>");
        if (transaction.getStatus() == Status.CANCELLED) {
            return C3286R.C3288drawable.fork_ic_transaction_cancelled;
        }
        if (transaction instanceof Transaction.Crypto.Donation) {
            int i = WhenMappings.$EnumSwitchMapping$0[transaction.getDirection().ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3) {
                    return C3286R.C3288drawable.fork_ic_transaction_donate_out;
                }
                return TransactionDirectionExtKt.icon(transaction.getDirection());
            }
            return C3286R.C3288drawable.fork_ic_transaction_donate_in;
        }
        if (transaction instanceof Transaction.Transfer ? true : transaction instanceof Transaction.Unsupported ? true : transaction instanceof Transaction.Crypto.Transfer ? true : transaction instanceof Transaction.Refund) {
            return TransactionDirectionExtKt.icon(transaction.getDirection());
        }
        if (transaction instanceof Transaction.Referral ? true : transaction instanceof Transaction.Lottery ? true : transaction instanceof Transaction.Registration) {
            return C3286R.C3288drawable.fork_ic_transaction_bonus;
        }
        if (transaction instanceof Transaction.Purchase) {
            return C3286R.C3288drawable.fork_ic_transaction_purchase;
        }
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return C3286R.C3288drawable.fork_ic_transaction_simplex;
        }
        if (transaction instanceof Transaction.Crypto.Approve) {
            return C3286R.C3288drawable.fork_ic_transaction_approve;
        }
        if (transaction instanceof Transaction.Crypto.Swap) {
            int i2 = WhenMappings.$EnumSwitchMapping$1[transaction.getProcessingType().ordinal()];
            if (i2 == 1 || i2 == 2) {
                return C3286R.C3288drawable.fork_ic_transaction_uniswap;
            }
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 == 5) {
                        return C3286R.C3288drawable.fork_ic_transaction_symbiosis;
                    }
                    return C3286R.C3288drawable.fork_ic_transaction_uniswap;
                }
                return C3286R.C3288drawable.fork_ic_transaction_1_inch;
            }
            return C3286R.C3288drawable.fork_ic_transaction_pancakeswap;
        }
        return TransactionDirectionExtKt.icon(transaction.getDirection());
    }

    public static final int getCategoryTitle(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "<this>");
        if (transaction instanceof Transaction.Transfer ? true : transaction instanceof Transaction.Unsupported ? true : transaction instanceof Transaction.Crypto.Transfer) {
            return transaction.getDirection().getTitle();
        }
        if (transaction instanceof Transaction.Referral) {
            return C3286R.string.wallet_transactions_type_referral_title;
        }
        if (transaction instanceof Transaction.Lottery) {
            return C3286R.string.wallet_transactions_type_lottery_title;
        }
        if (transaction instanceof Transaction.Registration) {
            return C3286R.string.wallet_transactions_type_welcome_title;
        }
        if (transaction instanceof Transaction.Purchase) {
            return C3286R.string.wallet_transactions_type_in_app_purchase_title;
        }
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return C3286R.string.wallet_transactions_type_simplex_title;
        }
        if (!(transaction instanceof Transaction.Crypto.Swap)) {
            return transaction instanceof Transaction.Refund ? C3286R.string.wallet_transactions_type_refund_title : transaction.getDirection().getTitle();
        }
        int i = WhenMappings.$EnumSwitchMapping$1[transaction.getProcessingType().ordinal()];
        if (i == 1 || i == 2) {
            return C3286R.string.wallet_transactions_type_uniswap_title;
        }
        if (i != 3) {
            if (i != 4) {
                if (i == 5) {
                    return C3286R.string.wallet_transactions_type_symbiosis_title;
                }
                return C3286R.string.wallet_transactions_type_uniswap_title;
            }
            return C3286R.string.wallet_transactions_type_1inch_title;
        }
        return C3286R.string.wallet_transactions_type_pancakeswap_title;
    }
}
