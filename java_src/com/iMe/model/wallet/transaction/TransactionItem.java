package com.iMe.model.wallet.transaction;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.StatusExtKt;
import com.iMe.utils.extentions.model.wallet.TransactionExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
/* compiled from: TransactionItem.kt */
/* loaded from: classes3.dex */
public final class TransactionItem extends NoChildNode {
    private final Transaction transaction;

    /* compiled from: TransactionItem.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionDirection.values().length];
            try {
                iArr[TransactionDirection.f446IN.ordinal()] = 1;
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
        }
    }

    public static /* synthetic */ TransactionItem copy$default(TransactionItem transactionItem, Transaction transaction, int i, Object obj) {
        if ((i & 1) != 0) {
            transaction = transactionItem.transaction;
        }
        return transactionItem.copy(transaction);
    }

    public final Transaction component1() {
        return this.transaction;
    }

    public final TransactionItem copy(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        return new TransactionItem(transaction);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TransactionItem) && Intrinsics.areEqual(this.transaction, ((TransactionItem) obj).transaction);
    }

    public int hashCode() {
        return this.transaction.hashCode();
    }

    public String toString() {
        return "TransactionItem(transaction=" + this.transaction + ')';
    }

    public final Transaction getTransaction() {
        return this.transaction;
    }

    public TransactionItem(Transaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.transaction = transaction;
    }

    public final int getTransactionIcon() {
        return TransactionExtKt.getIcon(this.transaction);
    }

    public final String getTransactionTitle(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(TransactionExtKt.getCategoryTitle(this.transaction));
    }

    public final String getTransactionTime() {
        return StringExtKt.formatISODate(this.transaction.getCreatedAt(), DateFormatter.DateType.ONLY_TIME);
    }

    public final String getTransactionDate() {
        return StringExtKt.formatISODate(this.transaction.getCreatedAt(), DateFormatter.DateType.DATE_AND_TIME);
    }

    public final String getTransactionStatus(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(this.transaction.getStatus().getTitle());
    }

    public final int getTransactionStatusColorKey() {
        return StatusExtKt.getColorKey(this.transaction.getStatus());
    }

    public final boolean isUnsupported() {
        return this.transaction instanceof Transaction.Unsupported;
    }

    public final String getAmount(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Transaction transaction = this.transaction;
        if (transaction instanceof Transaction.Unsupported) {
            return resourceManager.getString(C3417R.string.wallet_unsupported_transaction_message);
        }
        if (transaction instanceof Transaction.Crypto.Approve) {
            return resourceManager.getString(C3417R.string.wallet_transactions_type_approve_title, transaction.getToken().getTicker());
        }
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            FiatCode spentFiatCode = ((Transaction.Crypto.SimplexPurchase) transaction).getSpentFiatCode();
            return resourceManager.getString(C3417R.string.wallet_transactions_type_simplex_amount_value, BalanceFormatter.formatBalance(((Transaction.Crypto.SimplexPurchase) this.transaction).getSpentAmount(), Integer.valueOf(spentFiatCode.getDecimals())), spentFiatCode.getShortName(), BalanceFormatter.formatBalance(this.transaction.getAmount(), Integer.valueOf(this.transaction.getToken().getDecimals())), this.transaction.getToken().getTicker());
        } else if (transaction instanceof Transaction.Crypto.Swap) {
            return resourceManager.getString(C3417R.string.wallet_transactions_type_simplex_amount_value, BalanceFormatter.formatBalance(((Transaction.Crypto.Swap) transaction).getInputAmount(), Integer.valueOf(((Transaction.Crypto.Swap) this.transaction).getInputToken().getDecimals())), ((Transaction.Crypto.Swap) this.transaction).getInputToken().getTicker(), BalanceFormatter.formatBalance(((Transaction.Crypto.Swap) this.transaction).getOutputAmount(), Integer.valueOf(((Transaction.Crypto.Swap) this.transaction).getOutputToken().getDecimals())), ((Transaction.Crypto.Swap) this.transaction).getOutputToken().getTicker());
        } else {
            return getAmountWithSymbol(true) + ' ' + this.transaction.getToken().getTicker();
        }
    }

    public static /* synthetic */ String getAmountWithSymbol$default(TransactionItem transactionItem, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return transactionItem.getAmountWithSymbol(z);
    }

    public final String getAmountWithSymbol(boolean z) {
        Transaction transaction = this.transaction;
        if (z) {
            return transaction.getDirection().getSymbol() + TransactionExtKt.getFormattedAmount(transaction);
        }
        return TransactionExtKt.getFormattedAmount(transaction);
    }

    public final String getRecipientAddress() {
        Transaction transaction = this.transaction;
        if (transaction instanceof Transaction.Crypto.Transfer) {
            int i = WhenMappings.$EnumSwitchMapping$0[transaction.getDirection().ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3) {
                    return ((Transaction.Crypto.Transfer) this.transaction).getRecipientAddress();
                }
                throw new NoWhenBranchMatchedException();
            }
            return ((Transaction.Crypto.Transfer) this.transaction).getSenderAddress();
        }
        return "";
    }
}
