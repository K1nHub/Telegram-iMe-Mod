package com.iMe.utils.extentions.model.wallet;

import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.model.wallet.transaction.TransactionProcessingType;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
/* compiled from: TransactionExt.kt */
/* loaded from: classes4.dex */
public final class TransactionExtKt {

    /* compiled from: TransactionExt.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TransactionDirection.values().length];
            try {
                iArr[TransactionDirection.f392IN.ordinal()] = 1;
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
                iArr2[TransactionProcessingType.SYMBIOSIS.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[TransactionProcessingType.ONEINCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[TransactionProcessingType.ONEINCH_FUSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final String getFormattedAmount(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "<this>");
        return BalanceFormatter.format(transaction.getAmount(), Integer.valueOf(transaction.getToken().getDecimals()));
    }

    public static final int getIcon(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "<this>");
        if (transaction.getStatus() == Status.CANCELLED) {
            return C3632R.C3634drawable.fork_ic_transaction_cancelled;
        }
        if (transaction instanceof Transaction.Crypto.Donation) {
            int i = WhenMappings.$EnumSwitchMapping$0[transaction.getDirection().ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3) {
                    return C3632R.C3634drawable.fork_ic_transaction_donate_out;
                }
                return TransactionDirectionExtKt.icon(transaction.getDirection());
            }
            return C3632R.C3634drawable.fork_ic_transaction_donate_in;
        }
        if (transaction instanceof Transaction.Transfer ? true : transaction instanceof Transaction.Unsupported ? true : transaction instanceof Transaction.Crypto.Transfer ? true : transaction instanceof Transaction.Refund) {
            return TransactionDirectionExtKt.icon(transaction.getDirection());
        }
        if (transaction instanceof Transaction.Referral ? true : transaction instanceof Transaction.Lottery ? true : transaction instanceof Transaction.Registration) {
            return C3632R.C3634drawable.fork_ic_transaction_bonus;
        }
        if (transaction instanceof Transaction.Purchase) {
            return C3632R.C3634drawable.fork_ic_transaction_purchase;
        }
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return C3632R.C3634drawable.fork_ic_transaction_simplex;
        }
        if (transaction instanceof Transaction.Crypto.Approve) {
            return C3632R.C3634drawable.fork_ic_transaction_approve;
        }
        if (transaction instanceof Transaction.Crypto.Swap) {
            switch (WhenMappings.$EnumSwitchMapping$1[transaction.getProcessingType().ordinal()]) {
                case 1:
                case 2:
                    return C3632R.C3634drawable.fork_ic_transaction_uniswap;
                case 3:
                    return C3632R.C3634drawable.fork_ic_transaction_pancakeswap;
                case 4:
                    return C3632R.C3634drawable.fork_ic_transaction_symbiosis;
                case 5:
                case 6:
                    return C3632R.C3634drawable.fork_ic_transaction_1_inch;
                default:
                    return C3632R.C3634drawable.fork_ic_transaction_uniswap;
            }
        }
        return TransactionDirectionExtKt.icon(transaction.getDirection());
    }

    public static final int getCategoryTitle(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "<this>");
        if (transaction instanceof Transaction.Transfer ? true : transaction instanceof Transaction.Unsupported ? true : transaction instanceof Transaction.Crypto.Transfer) {
            return transaction.getDirection().getTitle();
        }
        if (transaction instanceof Transaction.Referral) {
            return C3632R.string.wallet_transactions_type_referral_title;
        }
        if (transaction instanceof Transaction.Lottery) {
            return C3632R.string.wallet_transactions_type_lottery_title;
        }
        if (transaction instanceof Transaction.Registration) {
            return C3632R.string.wallet_transactions_type_welcome_title;
        }
        if (transaction instanceof Transaction.Purchase) {
            return C3632R.string.wallet_transactions_type_in_app_purchase_title;
        }
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            return C3632R.string.wallet_transactions_type_simplex_title;
        }
        if (!(transaction instanceof Transaction.Crypto.Swap)) {
            return transaction instanceof Transaction.Refund ? C3632R.string.wallet_transactions_type_refund_title : transaction.getDirection().getTitle();
        }
        switch (WhenMappings.$EnumSwitchMapping$1[transaction.getProcessingType().ordinal()]) {
            case 1:
            case 2:
                return C3632R.string.wallet_transactions_type_uniswap_title;
            case 3:
                return C3632R.string.wallet_transactions_type_pancakeswap_title;
            case 4:
                return C3632R.string.wallet_transactions_type_symbiosis_title;
            case 5:
                return C3632R.string.wallet_transactions_type_1inch_title;
            case 6:
                return C3632R.string.wallet_transactions_type_1inch_fusion_title;
            default:
                return C3632R.string.wallet_transactions_type_uniswap_title;
        }
    }
}
