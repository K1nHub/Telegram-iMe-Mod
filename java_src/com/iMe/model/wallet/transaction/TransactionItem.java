package com.iMe.model.wallet.transaction;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.TransactionExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TransactionItem.kt */
/* loaded from: classes3.dex */
public final class TransactionItem extends NoChildNode {
    private final Transaction transaction;

    /* compiled from: TransactionItem.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.CANCELLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TransactionDirection.values().length];
            try {
                iArr2[TransactionDirection.f459IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TransactionDirection.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[TransactionDirection.SELF.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
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
        int i = WhenMappings.$EnumSwitchMapping$0[this.transaction.getStatus().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return Theme.key_statisticChartLine_red;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return Theme.key_windowBackgroundWhiteGrayText2;
            }
            return Theme.key_statisticChartLine_red;
        }
        return Theme.key_statisticChartLine_green;
    }

    public final boolean isUnsupported() {
        return this.transaction instanceof Transaction.Unsupported;
    }

    public final String getAmount(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Transaction transaction = this.transaction;
        if (transaction instanceof Transaction.Unsupported) {
            return resourceManager.getString(C3558R.string.wallet_unsupported_transaction_message);
        }
        if (transaction instanceof Transaction.Crypto.Approve) {
            return resourceManager.getString(C3558R.string.wallet_transactions_type_approve_title, transaction.getToken().getTicker());
        }
        if (transaction instanceof Transaction.Crypto.SimplexPurchase) {
            FiatCode spentFiatCode = ((Transaction.Crypto.SimplexPurchase) transaction).getSpentFiatCode();
            return resourceManager.getString(C3558R.string.wallet_transactions_type_simplex_amount_value, BalanceFormatter.formatBalance(((Transaction.Crypto.SimplexPurchase) this.transaction).getSpentAmount(), Integer.valueOf(spentFiatCode.getDecimals())), spentFiatCode.getShortName(), BalanceFormatter.formatBalance(this.transaction.getAmount(), Integer.valueOf(this.transaction.getToken().getDecimals())), this.transaction.getToken().getTicker());
        } else if (transaction instanceof Transaction.Crypto.Swap) {
            return resourceManager.getString(C3558R.string.wallet_transactions_type_simplex_amount_value, BalanceFormatter.formatBalance(((Transaction.Crypto.Swap) transaction).getInputAmount(), Integer.valueOf(((Transaction.Crypto.Swap) this.transaction).getInputToken().getDecimals())), ((Transaction.Crypto.Swap) this.transaction).getInputToken().getTicker(), BalanceFormatter.formatBalance(((Transaction.Crypto.Swap) this.transaction).getOutputAmount(), Integer.valueOf(((Transaction.Crypto.Swap) this.transaction).getOutputToken().getDecimals())), ((Transaction.Crypto.Swap) this.transaction).getOutputToken().getTicker());
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
            int i = WhenMappings.$EnumSwitchMapping$1[transaction.getDirection().ordinal()];
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
