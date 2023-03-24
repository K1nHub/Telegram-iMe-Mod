package com.smedialink.model.wallet.home.pay;

import com.smedialink.storage.domain.model.binancepay.BinanceTransaction;
import com.smedialink.storage.domain.model.binancepay.BinanceTransactionDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
/* compiled from: BinanceTransactionsGroup.kt */
/* loaded from: classes3.dex */
public abstract class BinanceTransactionsGroup {

    /* renamed from: id */
    private final int f282id;
    private final int nameResId;

    public /* synthetic */ BinanceTransactionsGroup(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    public abstract boolean checkTransaction(BinanceTransaction binanceTransaction);

    private BinanceTransactionsGroup(int i, int i2) {
        this.f282id = i;
        this.nameResId = i2;
    }

    public final int getId() {
        return this.f282id;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    /* compiled from: BinanceTransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class All extends BinanceTransactionsGroup {
        public static final All INSTANCE = new All();

        @Override // com.smedialink.model.wallet.home.pay.BinanceTransactionsGroup
        public boolean checkTransaction(BinanceTransaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return true;
        }

        private All() {
            super(C3301R.C3304id.wallet_token_details_transactions_all, C3301R.string.wallet_token_details_transactions_all, null);
        }
    }

    /* compiled from: BinanceTransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class Incoming extends BinanceTransactionsGroup {
        public static final Incoming INSTANCE = new Incoming();

        private Incoming() {
            super(C3301R.C3304id.wallet_token_details_transactions_incoming, C3301R.string.wallet_token_details_transactions_incoming, null);
        }

        @Override // com.smedialink.model.wallet.home.pay.BinanceTransactionsGroup
        public boolean checkTransaction(BinanceTransaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return transaction.getDirection() == BinanceTransactionDirection.IN;
        }
    }

    /* compiled from: BinanceTransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class Outgoing extends BinanceTransactionsGroup {
        public static final Outgoing INSTANCE = new Outgoing();

        private Outgoing() {
            super(C3301R.C3304id.wallet_token_details_transactions_outgoing, C3301R.string.wallet_token_details_transactions_outgoing, null);
        }

        @Override // com.smedialink.model.wallet.home.pay.BinanceTransactionsGroup
        public boolean checkTransaction(BinanceTransaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return transaction.getDirection() == BinanceTransactionDirection.OUT;
        }
    }
}
