package com.iMe.model.wallet.crypto.wallet_connect;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
/* compiled from: WalletConnectTransactionScreenType.kt */
/* loaded from: classes3.dex */
public abstract class WalletConnectTransactionScreenType {
    private final int buttonTextResId;
    private final long requestId;
    private final WalletConnectSessionItem sessionItem;
    private final WalletConnectProcessedTransaction transaction;

    public /* synthetic */ WalletConnectTransactionScreenType(long j, WalletConnectSessionItem walletConnectSessionItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, walletConnectSessionItem, walletConnectProcessedTransaction, i);
    }

    private WalletConnectTransactionScreenType(long j, WalletConnectSessionItem walletConnectSessionItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, int i) {
        this.requestId = j;
        this.sessionItem = walletConnectSessionItem;
        this.transaction = walletConnectProcessedTransaction;
        this.buttonTextResId = i;
    }

    public long getRequestId() {
        return this.requestId;
    }

    public WalletConnectSessionItem getSessionItem() {
        return this.sessionItem;
    }

    public WalletConnectProcessedTransaction getTransaction() {
        return this.transaction;
    }

    public final int getButtonTextResId() {
        return this.buttonTextResId;
    }

    /* compiled from: WalletConnectTransactionScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Send extends WalletConnectTransactionScreenType {
        private final long requestId;
        private final WalletConnectSessionItem sessionItem;
        private final WalletConnectProcessedTransaction transaction;

        public static /* synthetic */ Send copy$default(Send send, long j, WalletConnectSessionItem walletConnectSessionItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, int i, Object obj) {
            if ((i & 1) != 0) {
                j = send.getRequestId();
            }
            if ((i & 2) != 0) {
                walletConnectSessionItem = send.getSessionItem();
            }
            if ((i & 4) != 0) {
                walletConnectProcessedTransaction = send.getTransaction();
            }
            return send.copy(j, walletConnectSessionItem, walletConnectProcessedTransaction);
        }

        public final long component1() {
            return getRequestId();
        }

        public final WalletConnectSessionItem component2() {
            return getSessionItem();
        }

        public final WalletConnectProcessedTransaction component3() {
            return getTransaction();
        }

        public final Send copy(long j, WalletConnectSessionItem sessionItem, WalletConnectProcessedTransaction transaction) {
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return new Send(j, sessionItem, transaction);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Send) {
                Send send = (Send) obj;
                return getRequestId() == send.getRequestId() && Intrinsics.areEqual(getSessionItem(), send.getSessionItem()) && Intrinsics.areEqual(getTransaction(), send.getTransaction());
            }
            return false;
        }

        public int hashCode() {
            return (((BotsDbModel$$ExternalSyntheticBackport0.m706m(getRequestId()) * 31) + getSessionItem().hashCode()) * 31) + getTransaction().hashCode();
        }

        public String toString() {
            return "Send(requestId=" + getRequestId() + ", sessionItem=" + getSessionItem() + ", transaction=" + getTransaction() + ')';
        }

        @Override // com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType
        public long getRequestId() {
            return this.requestId;
        }

        @Override // com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType
        public WalletConnectSessionItem getSessionItem() {
            return this.sessionItem;
        }

        @Override // com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType
        public WalletConnectProcessedTransaction getTransaction() {
            return this.transaction;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Send(long j, WalletConnectSessionItem sessionItem, WalletConnectProcessedTransaction transaction) {
            super(j, sessionItem, transaction, C3295R.string.wallet_connect_transaction_button_sign_and_send, null);
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            this.requestId = j;
            this.sessionItem = sessionItem;
            this.transaction = transaction;
        }
    }

    /* compiled from: WalletConnectTransactionScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Sign extends WalletConnectTransactionScreenType {
        private final long requestId;
        private final WalletConnectSessionItem sessionItem;
        private final WalletConnectProcessedTransaction transaction;

        public static /* synthetic */ Sign copy$default(Sign sign, long j, WalletConnectSessionItem walletConnectSessionItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, int i, Object obj) {
            if ((i & 1) != 0) {
                j = sign.getRequestId();
            }
            if ((i & 2) != 0) {
                walletConnectSessionItem = sign.getSessionItem();
            }
            if ((i & 4) != 0) {
                walletConnectProcessedTransaction = sign.getTransaction();
            }
            return sign.copy(j, walletConnectSessionItem, walletConnectProcessedTransaction);
        }

        public final long component1() {
            return getRequestId();
        }

        public final WalletConnectSessionItem component2() {
            return getSessionItem();
        }

        public final WalletConnectProcessedTransaction component3() {
            return getTransaction();
        }

        public final Sign copy(long j, WalletConnectSessionItem sessionItem, WalletConnectProcessedTransaction transaction) {
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return new Sign(j, sessionItem, transaction);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Sign) {
                Sign sign = (Sign) obj;
                return getRequestId() == sign.getRequestId() && Intrinsics.areEqual(getSessionItem(), sign.getSessionItem()) && Intrinsics.areEqual(getTransaction(), sign.getTransaction());
            }
            return false;
        }

        public int hashCode() {
            return (((BotsDbModel$$ExternalSyntheticBackport0.m706m(getRequestId()) * 31) + getSessionItem().hashCode()) * 31) + getTransaction().hashCode();
        }

        public String toString() {
            return "Sign(requestId=" + getRequestId() + ", sessionItem=" + getSessionItem() + ", transaction=" + getTransaction() + ')';
        }

        @Override // com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType
        public long getRequestId() {
            return this.requestId;
        }

        @Override // com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType
        public WalletConnectSessionItem getSessionItem() {
            return this.sessionItem;
        }

        @Override // com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType
        public WalletConnectProcessedTransaction getTransaction() {
            return this.transaction;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Sign(long j, WalletConnectSessionItem sessionItem, WalletConnectProcessedTransaction transaction) {
            super(j, sessionItem, transaction, C3295R.string.wallet_connect_transaction_button_sign, null);
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            this.requestId = j;
            this.sessionItem = sessionItem;
            this.transaction = transaction;
        }
    }
}
