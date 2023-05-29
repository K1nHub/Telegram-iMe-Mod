package com.iMe.model.wallet.details;

import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
/* compiled from: TransactionsGroup.kt */
/* loaded from: classes3.dex */
public abstract class TransactionsGroup {

    /* renamed from: id */
    private final int f278id;
    private final int nameResId;

    public /* synthetic */ TransactionsGroup(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    public abstract boolean checkTransaction(Transaction transaction);

    private TransactionsGroup(int i, int i2) {
        this.f278id = i;
        this.nameResId = i2;
    }

    public final int getId() {
        return this.f278id;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    /* compiled from: TransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class All extends TransactionsGroup {
        public static final All INSTANCE = new All();

        @Override // com.iMe.model.wallet.details.TransactionsGroup
        public boolean checkTransaction(Transaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return true;
        }

        private All() {
            super(C3295R.C3298id.wallet_token_details_transactions_all, C3295R.string.wallet_token_details_transactions_all, null);
        }
    }

    /* compiled from: TransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class Incoming extends TransactionsGroup {
        public static final Incoming INSTANCE = new Incoming();

        private Incoming() {
            super(C3295R.C3298id.wallet_token_details_transactions_incoming, C3295R.string.wallet_token_details_transactions_incoming, null);
        }

        @Override // com.iMe.model.wallet.details.TransactionsGroup
        public boolean checkTransaction(Transaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return transaction.getDirection() == TransactionDirection.f373IN && ((transaction instanceof Transaction.Transfer) || (transaction instanceof Transaction.Unsupported) || (transaction instanceof Transaction.Crypto.Transfer) || (transaction instanceof Transaction.Refund));
        }
    }

    /* compiled from: TransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class Outgoing extends TransactionsGroup {
        public static final Outgoing INSTANCE = new Outgoing();

        private Outgoing() {
            super(C3295R.C3298id.wallet_token_details_transactions_outgoing, C3295R.string.wallet_token_details_transactions_outgoing, null);
        }

        @Override // com.iMe.model.wallet.details.TransactionsGroup
        public boolean checkTransaction(Transaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return transaction.getDirection() == TransactionDirection.OUT && ((transaction instanceof Transaction.Transfer) || (transaction instanceof Transaction.Unsupported) || (transaction instanceof Transaction.Crypto.Transfer) || (transaction instanceof Transaction.Refund));
        }
    }

    /* compiled from: TransactionsGroup.kt */
    /* loaded from: classes3.dex */
    public static final class Swap extends TransactionsGroup {
        public static final Swap INSTANCE = new Swap();

        private Swap() {
            super(C3295R.C3298id.wallet_token_details_transactions_swap, C3295R.string.wallet_token_details_transactions_swap, null);
        }

        @Override // com.iMe.model.wallet.details.TransactionsGroup
        public boolean checkTransaction(Transaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return transaction instanceof Transaction.Crypto.Swap;
        }
    }
}
