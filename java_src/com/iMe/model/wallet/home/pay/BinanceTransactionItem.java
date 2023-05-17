package com.iMe.model.wallet.home.pay;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionDirection;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionStatus;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionType;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.pay.BinancePayExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
/* compiled from: BinanceTransactionItem.kt */
/* loaded from: classes3.dex */
public final class BinanceTransactionItem extends NoChildNode {
    private final BinanceTransaction transaction;

    public static /* synthetic */ BinanceTransactionItem copy$default(BinanceTransactionItem binanceTransactionItem, BinanceTransaction binanceTransaction, int i, Object obj) {
        if ((i & 1) != 0) {
            binanceTransaction = binanceTransactionItem.transaction;
        }
        return binanceTransactionItem.copy(binanceTransaction);
    }

    public final BinanceTransaction component1() {
        return this.transaction;
    }

    public final BinanceTransactionItem copy(BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        return new BinanceTransactionItem(transaction);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinanceTransactionItem) && Intrinsics.areEqual(this.transaction, ((BinanceTransactionItem) obj).transaction);
    }

    public int hashCode() {
        return this.transaction.hashCode();
    }

    public String toString() {
        return "BinanceTransactionItem(transaction=" + this.transaction + ')';
    }

    public final BinanceTransaction getTransaction() {
        return this.transaction;
    }

    public BinanceTransactionItem(BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.transaction = transaction;
    }

    public final int getTransactionIcon() {
        BinanceTransaction binanceTransaction = this.transaction;
        if (binanceTransaction instanceof BinanceTransaction.Pay ? true : binanceTransaction instanceof BinanceTransaction.Unsupported) {
            return BinancePayExtKt.icon(binanceTransaction.getDirection());
        }
        if (binanceTransaction instanceof BinanceTransaction.Convert) {
            return C3290R.C3292drawable.fork_ic_transaction_binance_convert;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final String getTransactionTitle(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        BinanceTransaction binanceTransaction = this.transaction;
        if (binanceTransaction instanceof BinanceTransaction.Pay ? true : binanceTransaction instanceof BinanceTransaction.Unsupported) {
            return resourceManager.getString(binanceTransaction.getDirection().getTitle());
        }
        if (binanceTransaction instanceof BinanceTransaction.Convert) {
            return resourceManager.getString(C3290R.string.binance_convert_toolbar_title);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final String getTransactionTime() {
        return StringExtKt.formatISODate(this.transaction.getCreatedAt(), DateFormatter.DateType.ONLY_TIME);
    }

    public final String getTransactionStatus(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(this.transaction.getStatus().getTitle());
    }

    public final int getTransactionStatusColor() {
        return BinancePayExtKt.colorKey(this.transaction.getStatus());
    }

    public final boolean isUnsupported() {
        return this.transaction.getType() == BinanceTransactionType.UNKNOWN;
    }

    public final boolean isIncomingPending() {
        return this.transaction.getStatus() == BinanceTransactionStatus.PENDING && this.transaction.getDirection() == BinanceTransactionDirection.IN;
    }

    public final String getAmount() {
        BinanceTransaction binanceTransaction = this.transaction;
        if (binanceTransaction instanceof BinanceTransaction.Pay ? true : binanceTransaction instanceof BinanceTransaction.Unsupported) {
            return BalanceFormatter.formatBalance(Double.valueOf(this.transaction.getAmount()), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()) + ' ' + this.transaction.getAsset();
        } else if (binanceTransaction instanceof BinanceTransaction.Convert) {
            StringBuilder sb = new StringBuilder();
            Double valueOf = Double.valueOf(((BinanceTransaction.Convert) this.transaction).getInputAmount());
            TokenInfo.Crypto.Ethereum.BNB bnb = TokenInfo.Crypto.Ethereum.BNB.INSTANCE;
            sb.append(BalanceFormatter.formatBalance(valueOf, bnb.getDecimals()));
            sb.append(' ');
            sb.append(((BinanceTransaction.Convert) this.transaction).getInputAssetShortName());
            sb.append(" -> ");
            sb.append(BalanceFormatter.formatBalance(Double.valueOf(((BinanceTransaction.Convert) this.transaction).getOutputAmount()), bnb.getDecimals()));
            sb.append(' ');
            sb.append(((BinanceTransaction.Convert) this.transaction).getOutputAssetShortName());
            return sb.toString();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
