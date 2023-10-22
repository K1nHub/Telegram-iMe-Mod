package com.iMe.model.wallet.home.pay;

import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: BinanceTransactionsGroup.kt */
/* loaded from: classes3.dex */
public abstract class BinanceTransactionsGroup {

    /* renamed from: id */
    private final int f304id;
    private final int nameResId;

    public /* synthetic */ BinanceTransactionsGroup(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    public abstract boolean checkTransaction(BinanceTransaction binanceTransaction);

    private BinanceTransactionsGroup(int i, int i2) {
        this.f304id = i;
        this.nameResId = i2;
    }

    public final int getId() {
        return this.f304id;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    /* compiled from: BinanceTransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class All extends BinanceTransactionsGroup {
        public static final All INSTANCE = new All();

        @Override // com.iMe.model.wallet.home.pay.BinanceTransactionsGroup
        public boolean checkTransaction(BinanceTransaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return true;
        }

        private All() {
            super(C3630R.C3633id.wallet_token_details_transactions_all, C3630R.string.wallet_token_details_transactions_all, null);
        }
    }

    /* compiled from: BinanceTransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class Incoming extends BinanceTransactionsGroup {
        public static final Incoming INSTANCE = new Incoming();

        private Incoming() {
            super(C3630R.C3633id.wallet_token_details_transactions_incoming, C3630R.string.wallet_token_details_transactions_incoming, null);
        }

        @Override // com.iMe.model.wallet.home.pay.BinanceTransactionsGroup
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
            super(C3630R.C3633id.wallet_token_details_transactions_outgoing, C3630R.string.wallet_token_details_transactions_outgoing, null);
        }

        @Override // com.iMe.model.wallet.home.pay.BinanceTransactionsGroup
        public boolean checkTransaction(BinanceTransaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return transaction.getDirection() == BinanceTransactionDirection.OUT;
        }
    }
}
